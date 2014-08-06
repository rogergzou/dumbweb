<?php

    // configuration
    require("../includes/config.php");
    
    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // apologize if no expense was inputted
        if (empty($_POST["expense"]))
        {
            apologize_expenses("You must provide an expense and a category.");
        }
        
        // if a category is selected from the dropdown menu
        if ($_POST["category_select"] != "blank")
        {
            // store selected category in variable
            $category = $_POST["category_select"];
        }
        // if the custom input field is not empty
        else if (!empty($_POST["category_custom"]))
        {
            // checks if there is whitespace in the inputted category
            if (preg_match('/\s/',$_POST["category_custom"]))
            {
                apologize_expenses("There cannot be any whitespace in custom categories. Try using underscores.");
            }
            // store inputted category in variable
            $category = $_POST["category_custom"];
            
            // add the custom category as a another column in the expenses and limits tables
            query("ALTER TABLE `expenses` ADD `$category` DECIMAL (65, 4) UNSIGNED NOT NULL DEFAULT 0");
            query("ALTER TABLE `limits` ADD `$category` DECIMAL (65, 4) UNSIGNED NOT NULL DEFAULT 0");
            
            // create a table for the the category's expenses
            query("CREATE TABLE  `$category` (`id` INT( 10 ) NOT NULL ,`amount` DECIMAL( 65, 4 ) UNSIGNED NOT NULL DEFAULT  '0', `time` DATETIME NOT NULL)");
        }
        // else apologize
        else
        {
            apologize_expenses("You must provide an expense and a category.");
        }
        
        // update category column with inputted expense in expenses table
        if (query("UPDATE expenses SET `$category` = `$category` + ? WHERE id = ?", $_POST["expense"], $_SESSION["id"]) === false)
        {
            apologize_expenses("Update of " . $category . " column in expenses table failed");
        }
        
        // update total expenses in expenses table
        if (query("UPDATE expenses SET total = total + ? WHERE id = ?", $_POST["expense"], $_SESSION["id"]) === false)
        {
            apologize_expenses("Update to expenses table failed.");
        }
        
        // insert expense into category table
        if (query("INSERT INTO '$category' (id, amount, time) VALUES (?, ?, NOW())", $_SESSION["id"], $_POST["expense"]) === false)
        {
            apologize_expenses("Insertion into " . $category . " table failed.");
        }
        
        // insert into total table the expense and category of expense
        if (query("INSERT INTO total (id, amount, time, type) VALUES(?, ?, NOW(), ?)", $_SESSION["id"], $_POST["expense"], $category) === false)
        {
            apologize_expenses("Insertion into total table failed");
        }
        
        // redirect to home page
        redirect("index.php");
        
    }
    else
    {
        // store all categories in an array
        $categories = categories();
    
        // render expenses form
        render("expenses_form.php", ["title" => "expenses", "categories" => $categories]);
    }

?>

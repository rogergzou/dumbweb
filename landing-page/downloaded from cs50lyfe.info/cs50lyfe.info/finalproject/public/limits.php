<?php

    // configuration
    require("../includes/config.php");
    
    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // if no limit was inputted
        if (empty($_POST["limit"]))
        {
            apologize_limits("You must provide an expense and a category.");
        }
        
        // checks for positive limit
        if ($_POST["limit"] <= 0)
        {
            apologize_limits("You must provide a positive limit.");
        }

        // if a category was selected
        if ($_POST["category_select"] != "blank")
        {
            // store the selected category in a variable
            $category = $_POST["category_select"];
        }

        // else apologize
        else
        {
            apologize_limits("You must provide an expense and a category.");
        }
        
        // update category in limit table with inputted limit
        if (query("UPDATE limits SET $category = ? WHERE id = ?", $_POST["limit"], $_SESSION["id"]) === false)
        {
            apologize_limits("Update of " . $category . " column in expenses table failed"); 
        }
        
        // redirect to home page
        redirect("index.php");
        
    }
    else
    {
        // store all categories in an array
        $categories = categories();
        // else render form
        render("limits_form.php", ["title" => "limits", "categories" => $categories]);
    }

?>

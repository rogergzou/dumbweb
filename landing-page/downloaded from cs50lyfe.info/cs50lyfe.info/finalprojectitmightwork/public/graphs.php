<?php

    // define length of year-month format
    define("DATE_LENGTH", 7);
    
    // configuration
    require("../includes/config.php");

// graph for total spending
    
    // query all expenses
    $expenses = query("SELECT amount, time FROM total WHERE id = ?", $_SESSION["id"]);
    
    // change time format to year-month (always 7 characters long) for each expense
    for ($i = 0, $n = count($expenses); $i < $n; $i++)
    {
        $expenses[$i]["time"] = substr($expenses[$i]["time"], 0, DATE_LENGTH);
    }
    
    // declare array of each month of expenses
    $expenses_monthly = [];
    
    // declare counter for array of each month of expenses
    $expenses_index = 0;
    
    // populate array with each month
    for ($i = 0, $n = count($expenses); $i < $n; $i++)
    {
        // skip over repeat months (since table is ordered by timestamp)
        if ($i != 0 && $expenses[$i]["time"] == $expenses[$i - 1]["time"])
        {
            continue;
        }
        
        // add new month to array and increase counter
        $expenses_monthly[$expenses_index] = $expenses[$i]["time"];
        $expenses_index++;
    }
    
    // declare array of total monthly expenses
    $sum = [];
    
    // declare counter for array of total monthly expenses
    $sum_index = 0;
    
    // declare counter for monthly sum
    $total_sum = 0;
    
    // populate array of total monthly expenses
    for ($i = 0, $n = count($expenses); $i < $n; $i++)
    {
        // increase monthly sum if month of current and previous expenditure in the iteration is the same
        if ($i == 0 || $expenses[$i]["time"] == $expenses[$i - 1]["time"])
        {
            $total_sum = $total_sum + $expenses[$i]["amount"];
        }
        else
        {
            // else add total monthly expense to the array and increase counter
            $sum[$sum_index] = $total_sum;
            $sum_index++;
            
            // set counter to first expenses in new month
            $total_sum = $expenses[$i]["amount"];
        }
    }
    
    // add last total monthly expenses to sum array
    $sum[$sum_index] = $total_sum;
    
// graph for total spending in each category
    
    // query all column names in expenses table
    $categories = query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'expenses'");
    
    // remove first two columns from array (id and total are not needed)
    $categories = array_slice($categories, 2);
    
    // create 1-dimensional array from 2-dimensional array returned by query function
    for ($i = 0, $n = count($categories); $i < $n; $i++)
    {
        $categories[$i] = $categories[$i]["COLUMN_NAME"];
    }
    
    // declare array of total spending in each category
    $spending = [];
    
    // populate array of total spending in each category
    for ($i = 0, $n < count($categories); $i < $n; $i++)
    {
        // query spending in each category from expenses table
        $sql_temp = query("SELECT $categories[$i] FROM expenses WHERE id = ?", $_SESSION["id"]);
        
        // restructure array from 2-dimensional array returned by query function
        $spending[$i] = $sql_temp[0][$categories[$i]];
    }
    
// graph for spending each each category over time
    
    // declare array of all categories
    $all_categories = [];
    
    print_r($categories);
    
    // populate array with each expense amount and time for each category
    for ($i = 0, $n = count($categories); $i < $n; $i++)
    {
        // query expense amount and time for each category
        $expenses = query("SELECT amount, time FROM $categories[$i] WHERE id = ?", $_SESSION["id"]);
        
        // iterate over each expense
        for ($j = 0, $m = count($expenses); $j < $m; $j++)
        {
            // populate each expense amount and time into index correponding to current category in iteration
            $all_categories[$categories[$i]][$j]["amount"] = $expenses[$j]["amount"];
            $all_categories[$categories[$i]][$j]["time"] = $expenses[$j]["time"];
        }
    }
    
    // declare array of all categories' months of expenses
    $all_categories_monthly = [];
    
    // declare array of all categories' total monthly expenses
    $all_categories_sum = [];
    
    // populate array of all categories' months of expenses and array of all categories' total monthly expenditures
    for ($i = 0, $n < count($categories); $i < $n; $i++)
    {
        // ignore categories with no expenses
        if (empty(query("SELECT amount, time FROM $categories[$i] WHERE id = ?", $_SESSION["id"])))
        {
            continue;
        }
        
        // change time format to year-month (always 7 characters long) for each expense
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            $all_categories[$categories[$i]][$j]["time"] = substr($all_categories[$categories[$i]][$j]["time"], 0, DATE_LENGTH);
        }
        
        // declare array for each category's months of expenses
        $categories_monthly = [];
        
        // declare counter for array of each month of expenses
        $categories_index = 0;
        
        // 
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            if ($j != 0 && $all_categories[$categories[$i]][$j]["time"] == $all_categories[$categories[$i]][$j - 1]["time"])
            {
                continue;
            }
            
            $categories_monthly[$categories_index] = $all_categories[$categories[$i]][$j]["time"];
            $categories_index++;
        }
        
        $all_categories_monthly[$categories[$i]] = $categories_monthly;
        
        $sum_index = 0;
        
        $total_sum = 0;
        
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            if ($j == 0 || $all_categories[$categories[$i]][$j]["time"] == $all_categories[$categories[$i]][$j - 1]["time"])
            {
                $total_sum = $total_sum + $all_categories[$categories[$i]][$j]["amount"];
            }
            else
            {
                $total_sum = (int) $total_sum;
                $all_categories_sum[$categories[$i]][$sum_index] = $total_sum;
                $total_sum = $all_categories[$categories[$i]][$j]["amount"];
                
                $sum_index++;
            }
        }
        
        $sum[$sum_index] = $total_sum;
        $total_sum = (int) $total_sum;
        
        $all_categories_sum[$categories[$i]][$sum_index] = $total_sum;
    }
    
    // graphs for comparison of limits and expenses
    
    $limits_changed = [];
    
    if (!empty(query("SELECT * FROM limits WHERE id = ?", $_SESSION["id"])))
    {
        $limits = query("SELECT * FROM limits WHERE id = ?", $_SESSION["id"]);
        $limit_index = 0;
    
        for ($i = 0, $n = count($categories); $i < $n; $i++)
        {
            if (empty(query("SELECT * FROM $categories[$i] WHERE id = ?", $_SESSION["id"])))
            {
                continue;
            }
            for ($j = 0, $m = count($all_categories_monthly[$categories[$i]]); $j < $m; $j++)
            {
                $limits_changed[$categories[$i]][$j] = (int) $limits[0][$categories[$i]];
            }
            
            $limit_index++;
        }
    }
    
    render("graphs_form.php", ["title" => "graphs",
                            "expenses_monthly" => $expenses_monthly,
                            "sum" => $sum, "categories" => $categories,
                            "spending" => $spending,
                            "all_categories_monthly" => $all_categories_monthly,
                            "all_categories_sum" => $all_categories_sum,
                            "limits" => $limits_changed]);
    
?>

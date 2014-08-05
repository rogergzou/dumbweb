<?php

    /**
    * graphs.php
    *
    * David Reading and Roger Zou CS50
    * Final Project: Save
    *
    * Declares arrays used in displaying charts. The file is organized by array. The start
    * of an array creation is signified by comments that appear to be indented one less than
    * usual. There are seven arrays. The fifth and sixth arrays are grouped together, as they
    * are derived from another array.
    */

    // define length of year-month format
    define("DATE_LENGTH", 7);
    
    // configuration
    require("../includes/config.php");

// array of each month of expenses
    
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
    
// array of sums of monthly expenses

    // declare array of total monthly expenses
    $sum = [];
    
    // declare counter for array of total monthly expenses
    $sum_index = 0;
    
    // declare counter for monthly sum
    $total_sum = 0;
    
    // populate array of total monthly expenses
    for ($i = 0, $n = count($expenses); $i < $n; $i++)
    {
        // increase monthly sum if month of current and previous expense in the iteration is the same
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
    
// array for total spending in each category
    
    // store all categories in an array
    $categories = categories();
    
    // declare array of total spending in each category
    $spending = [];
    
    // populate array of total spending in each category
    for ($i = 0, $n = count($categories); $i < $n; $i++)
    {
        // query spending in each category from expenses table
        $sql_temp = query("SELECT $categories[$i] FROM expenses WHERE id = ?", $_SESSION["id"]);
        
        // restructure array from 2-dimensional array returned by query function
        $spending[$i] = (int) $sql_temp[0][$categories[$i]];
    }
    
// arrays of each categories' months of expenses and of each categories' total monthly expenses
    
    // declare array of all categories' expenses (with amount and time)
    $all_categories = [];
    
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
    
    // populate array of all categories' months of expenses and array of all categories' total monthly expenses
    for ($i = 0, $n < count($categories); $i < $n; $i++)
    {
        // ignore categories with no expenses
        if (count(query("SELECT amount, time FROM $categories[$i] WHERE id = ?", $_SESSION["id"])) == 0)
        {
            continue;
        }
        
        // change time format to year-month (always 7 characters long) for each expense
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            $all_categories[$categories[$i]][$j]["time"] = substr($all_categories[$categories[$i]][$j]["time"], 0, DATE_LENGTH);
        }
        
        // declare array of each category's months of expenses
        $categories_monthly = [];
        
        // declare counter for array of each month of expenses
        $categories_index = 0;
        
        // populate array of months of expenses
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            // skip over repeat months (since table is ordered by timestamp)
            if ($j != 0 && $all_categories[$categories[$i]][$j]["time"] == $all_categories[$categories[$i]][$j - 1]["time"])
            {
                continue;
            }
            
            // populate array of each category's months of expenses and update counter
            $categories_monthly[$categories_index] = $all_categories[$categories[$i]][$j]["time"];
            $categories_index++;
        }
        
        // populate array of all categories' monthly expenses
        $all_categories_monthly[$categories[$i]] = $categories_monthly;
        
        // declare counter for monthly sum
        $total_sum = 0;
        
        // declare index for array of total monthly expenses
        $sum_index = 0;
        
        // populate array of each category's total monthly expenses
        for ($j = 0, $m = count($all_categories[$categories[$i]]); $j < $m; $j++)
        {
            // increase monthly sum if month of current and previous expense in the iteration is the same
            if ($j == 0 || $all_categories[$categories[$i]][$j]["time"] == $all_categories[$categories[$i]][$j - 1]["time"])
            {
                $total_sum = $total_sum + $all_categories[$categories[$i]][$j]["amount"];
            }
            else
            {
                // explicitly cast monthly sum as int (RGraph bar charts only take ints, not floats)
                $total_sum = (int) $total_sum;
                
                // add total monthly expense to the array and increase counter
                $all_categories_sum[$categories[$i]][$sum_index] = $total_sum;
                $sum_index++;
                
                // set counter to to first expense in new month
                $total_sum = $all_categories[$categories[$i]][$j]["amount"];
            }
        }
        
        // explictly cast monthly sum as int (RGraph bar charts only take ints, not floats)
        $total_sum = (int) $total_sum;
        
        // add last total monthly expenses to sum array
        $all_categories_sum[$categories[$i]][$sum_index] = $total_sum;
    }
    
// array of each categories' limits

    // declare array for restructuring
    $limits_changed = [];
    
    // ignore categories with not set limits
    if (count(query("SELECT * FROM limits WHERE id = ?", $_SESSION["id"])) != 0)
    {
        // query all limits
        $limits = query("SELECT * FROM limits WHERE id = ?", $_SESSION["id"]);
        
        // declare counter for limits array
        $limit_index = 0;
        
        // populate restructured array with array containing each category's limit (of size number of months)
        for ($i = 0, $n = count($categories); $i < $n; $i++)
        {
            // skip over categories with no expenses
            if (count(query("SELECT * FROM $categories[$i] WHERE id = ?", $_SESSION["id"])) == 0)
            {
                continue;
            }
            
            // add a new element of the limits array for each month of expenses (to create straight line in RGgraph)
            for ($j = 0, $m = count($all_categories_monthly[$categories[$i]]); $j < $m; $j++)
            {
                $limits_changed[$categories[$i]][$j] = (int) $limits[0][$categories[$i]];
            }
            
            // update counter for limit array
            $limit_index++;
        }
    }
    
    // render graphs_form.php with arrays created here
    render("graphs_form.php", ["title" => "graphs",
                            "expenses_monthly" => $expenses_monthly,
                            "sum" => $sum,
                            "spending" => $spending,
                            "categories" => $categories,
                            "all_categories_monthly" => $all_categories_monthly,
                            "all_categories_sum" => $all_categories_sum,
                            "limits" => $limits_changed]);
    
?>

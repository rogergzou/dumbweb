<?php

    // configuration
    // require("../includes/config.php");
    require("../includes/config.php");
    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if (empty($_POST["username"]) || empty($_POST["password"]))
        {
            apologize("You must provide a username and a password.");
        }
        else if ($_POST["password"] !== $_POST["confirmation"])
        {
            apologize("Your passwords must match.");
        }
        
        
        else if (query("INSERT INTO users (username, hash, cash) VALUES(?, ?, 12345.67)", $_POST["username"], crypt($_POST["password"]))===false)
        {
            apologize("Query failed for some reason.");           
        }
        // assumes query worked and no errors found. also that elif executed query insert
        else
        {
            $rows = query("SELECT LAST_INSERT_ID() AS id");
            $id = $rows[0]["id"];
            
            // remember that user's now logged in by storing user's ID in session
            $_SESSION["id"] = $id;
            // require("login.php");
            // redirect to portfolio
            redirect("index.php");
        }
    }
    else
    {
        // else render form
        render("register_form.php", ["title" => "Register"]);
    }

?>

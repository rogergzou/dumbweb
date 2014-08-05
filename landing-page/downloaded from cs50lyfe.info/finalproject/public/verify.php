<?php
require("../includes/config.php");
//activates if verify_form submits
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
	//if no input, apologize
        if (empty($_POST["code"]))
        {
            apologize("You must provide the verification code.");
        }
        //if input matches randomly created variable, add user info to table
	else if ($_POST["code"] == $_SESSION["verz"])
        {
	    if (query("INSERT INTO users (user, hash, email) VALUES(?, ?, ?)", $_SESSION["username"], $_SESSION["password"], $_SESSION["email"]))
            {
            apologize("Query failed for some reason.");           
            }
            $rows = query("SELECT LAST_INSERT_ID() AS id");
            $id = $rows[0]["id"];
            
            // remember that user's now logged in by storing user's ID in session
            $_SESSION["id"] = $id;

            if (query("INSERT INTO expenses (id) VALUES(?)", $_SESSION["id"]) === false)
            {
                apologize("Query failed for some reason.");
            }

            if (query("INSERT INTO limits (id) VALUES(?)", $_SESSION["id"]) === false)
            {
                apologize("Query failed for some reason.");
            }

           // redirect to portfolio
            redirect("index.php");
        }
        else
        {
            apologize("Wrong verification code.");
        }
    }
else
{
	render("verify_form.php", ["title" => "Verify"]);
}
?>

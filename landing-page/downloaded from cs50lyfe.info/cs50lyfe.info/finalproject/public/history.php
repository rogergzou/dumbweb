<?php
    
    // configuration
    require("../includes/config.php");
    
    // query type, amount, and time of each expense from table total
    $history = query("SELECT type, amount, time FROM total WHERE id = ?", $_SESSION["id"]);
    
    // render the history form
    render("history_form.php", ["title" => "History", "history" => $history]);
?>

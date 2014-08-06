<?php

    // configuration
    require("../includes/config.php");

    // automatic updating of .sql file for backup
    require("export.php");

    // render home page
    render("index_form.php");

?>

<?php

    // configuration
    require("../includes/config.php");
    require_once("../../PHPMailer/class.phpmailer.php");

    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if (empty($_POST["username"]) || empty($_POST["password"]) || empty($_POST["confirmation"]) || empty($_POST["email"]))
        {
            apologize("You must provide a username and a password and an email.");
        }

        if ($_POST["password"] !== $_POST["confirmation"])
        {
            apologize("Your passwords must match.");
        }
        
        $check = query("SELECT user FROM users");
    
        for ($i = 0, $n = count($check); $i < $n; $i++)
        {
            if ($check[$i]["user"] == $_POST["username"])
            {
                apologize("Username taken");
            }
        }
   
        $verz = rand() % 100;
        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->Host = /*"smtp.fas.harvard.edu"*/ /* "smtp.gmail.com"*/ "mail.cs50lyfe.info";
        $mail->Port = 587;
        $mail->SMTPSecure = 'tls';
        $mail->SMTPAuth = true;
        $mail->Username = /*"ipod123432@gmail.com"*/ "verify@cs50lyfe.info";
        $mail->Password = "dingdingditch";
            
        $mail->SetFrom("verify@cs50lyfe.info");
            

        // set To:
        $mail->AddAddress($_POST["email"]);

        // set Subject:
        $mail->Subject = "Account Confirmation";

        // set body
        $mail->Body = "<html><body>Hi there, this email is just to confirm your account. Your verification code is $verz.</body></html>";

        // set alternative body, in case user's mail client doesn't support HTML
        $mail->AltBody = "confirm account: verification code $verz";

        // send mail
        if ($mail->Send() === false)
        {
            die($mail->ErrorInfo . "\n");
        }

        // sets up form for code to be inputted into
        $_SESSION["username"] = $_POST["username"];
        $_SESSION["password"] =  $_POST["password"];
        $_SESSION["email"] = $_POST["email"];
        $_SESSION["verz"] = $verz;

        // redirect to verify page
        redirect("verify.php");
    }
    else
    {
        // else render form
        render("register_form.php", ["title" => "Register"]);
    }

?>

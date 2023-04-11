<?php


session_start();

if(isset($_SESSION['userUID']))
{
    unset($_SESSION['userUID']);
}

header("Location: login.php");
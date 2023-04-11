<?php

$serverName = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "webappproject";

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName);

if (!$conn) {
    die("Connection failed: ");
}








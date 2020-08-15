<?php
ob_start(); // Turns on output buffering
session_start();
date_default_timezone_set("Europe/London");

try {
    $con = new PDO("mysql:dbname=guest;host=mypremiereserver.mysql.database.azure.com", "myadmin@mypremiereserver", "Password123");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} catch (PDOException $e) {
    exit('Connection failed:' . $e->getMessage());
}


//$con = new PDO('mysql:dbname=premiere;host=localhost', 'root', '');
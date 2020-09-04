<?php
ob_start(); // Turns on output buffering
session_start();
date_default_timezone_set("Europe/London");

try {
    $con = new PDO("mysql:dbname=testdb;host=trinatestserver.mysql.database.azure.com", "myadmin@trinatestserver", "Password123");

    // $con = new PDO('mysql:dbname=premiere;host=localhost', 'root', '');
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} catch (PDOException $e) {
    exit('Connection failed:' . $e->getMessage());
}
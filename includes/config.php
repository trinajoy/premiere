<?php
ob_start(); // Turns on output buffering
session_start();
date_default_timezone_set("Europe/London");

try {
    $con = new PDO('mysql:dbname=heroku_171e059e0ec155d;host=us-cdbr-east-02.cleardb.com', 'b20d0c989d1161', '0b374556');
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} catch (PDOException $e) {
    exit('Connection failed:' . $e->getMessage());
}
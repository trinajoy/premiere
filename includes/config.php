<?php
ob_start(); // Turns on output buffering
session_start();
date_default_timezone_set("Europe/London");

try {

    $con = new PDO('mysql:dbname=heroku_ae7d9830407b3ff;host=eu-cdbr-west-03.cleardb.net', 'b64dd9304457cf', 'eb2c3cde');
    // $con = new PDO('mysql:dbname=premiere;host=localhost', 'root', '');

    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} catch (PDOException $e) {
    exit('Connection failed:' . $e->getMessage());
}

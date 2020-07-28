<?php
require_once("../includes/config.php");

if (isset($_POST["videoId"]) && isset($_POST["userName"])) {
    $query = $con->prepare("SELECT progress FROM videoProgress WHERE userName=:userName AND videoId=:videoId");

    $query->bindValue(":userName", $_POST["userName"]);
    $query->bindValue(":videoId", $_POST["videoId"]);

    $query->execute();

    echo $query->fetchColumn();
} else {
    echo "No videoId or userName passed into file";
}
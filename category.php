<?php

require_once('includes/header.php');

if (!isset($_GET['id'])) {
    ErrorMessage::show('No id passed to page');
}

$containers = new PreviewProvider($con, $userLoggedIn);
echo $containers->createCategoryPreviewVideo($_GET['id']);

$containers = new CategoryContainers($con, $userLoggedIn);
echo $containers->showCategory($_GET['id']);
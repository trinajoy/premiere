<?php

require_once("includes/config.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Account.php");
require_once("includes/classes/Constants.php");

$account = new Account($con);

if (isset($_POST["submitButton"])) {

    $userName = FormSanitizer::sanitizeFormUserName($_POST["userName"]);
    $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);

    $success = $account->login($userName, $password);

    if ($success) {
        $_SESSION["userLoggedIn"] = $userName;
        header("Location: index.php");
    }
}

function getInputValue($name)
{
    if (isset($_POST[$name])) {
        echo $_POST[$name];
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/style/style.css" />
    <title> Movie App</title>
</head>

<body>

    <div class="signInContainer">
        <div class="column">

            <div class="header">
                <img src="assets/images/logo.png" alt="site logo" title="logo" />
                <h3> Sign In</h3>
                <span> to continue to Premiere</span>


            </div>
            <form method="POST">
                <?php echo $account->getError(Constants::$loginFailed); ?>
                <input type="text" name="userName" placeholder="UserName" value="<?php getInputValue('userName'); ?>"
                    required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="submit" name="submitButton" value="SUBMIT">
            </form>
            <a href="register.php" class="signInMessage"> Need an account? Sign Up here!</a>
        </div>
    </div>
</body>

</html>
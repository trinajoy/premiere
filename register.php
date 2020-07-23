<?php

require_once("includes/config.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Account.php");
require_once("includes/classes/Constants.php");

$account = new Account($con);

if (isset($_POST["submitButton"])) {
    $firstName = FormSanitizer::sanitizeFormString($_POST["firstName"]);
    $lastName = FormSanitizer::sanitizeFormString($_POST["lastName"]);
    $userName = FormSanitizer::sanitizeFormUserName($_POST["userName"]);
    $email = FormSanitizer::sanitizeFormEmail($_POST["email"]);
    $email2 = FormSanitizer::sanitizeFormEmail($_POST["email2"]);
    $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);
    $password2 = FormSanitizer::sanitizeFormPassword($_POST["password2"]);

    $success = $account->register($firstName, $lastName, $userName, $email, $email2, $password, $password2);

    if ($success) {
        $_SESSION['userLoggedIn'] = $userName;
        header('Location: index.php');
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
                <h3> Sign Up</h3>
                <span> to continue to Premiere</span>
            </div>

            <form method="POST" action="">

                <?php echo $account->getError(Constants::$firstNameCharacters); ?>
                <input type="text" name="firstName" placeholder="First name"
                    value="<?php getInputValue('firstName'); ?>" required>

                <?php echo $account->getError(Constants::$lastNameCharacters); ?>
                <input type="text" name="lastName" placeholder="Last name" value="<?php getInputValue('lastName'); ?>"
                    required>

                <?php echo $account->getError(Constants::$userNameCharacters); ?>
                <input type="text" name="userName" placeholder="User name" value="<?php getInputValue('userName'); ?>"
                    required>

                <?php echo $account->getError(Constants::$emailInvalid); ?>
                <?php echo $account->getError(Constants::$emailsDontMatch); ?>
                <?php echo $account->getError(Constants::$emailTaken); ?>
                <input type="email" name="email" placeholder="Email" value="<?php getInputValue('email'); ?>" required>

                <input type="email" name="email2" placeholder="Confirm email" required>

                <?php echo $account->getError(Constants::$passwordsDontMatch); ?>
                <?php echo $account->getError(Constants::$passwordLength); ?>
                <input type="password" name="password" placeholder="Password" required>
                <input type="password" name="password2" placeholder="Confirm password" required>
                <input type="submit" name="submitButton" value="SUBMIT">
            </form>
            <a href="login.php" class="signInMessage"> Already have an account? Sign In here!</a>
        </div>
    </div>
</body>

</html>
<?php

if (isset($_POST['username']) && isset($_POST['password'])) {
    login();
} else {
}

if (isset($_SESSION['username'])) {
    echo '<p>vous êtes connecté</p>';
    echo $_SESSION['username'];

    echo '<form action="../controller/login_c.php?connection=logout">';
    echo '<input type="submit" id="connection" name="connection" value="logout">';
    echo '</form>';
} else {
    $_SESSION['connexion'] = 'error';
    header('Location: ../view/loginform_v.php');
}


if (isset($_GET['connection'])) {
    if ($_GET['connection'] == "logout") {
        logout();
    }
}

<?php

require_once("../connect_bdd.php");


if (isset($_SESSION['username'])) {
    echo '<p>vous êtes connecté</p>';
    header('Location: ../controller/login_c.php');
} else {

    if (isset($_SESSION['connexion'])) {
        if ($_SESSION['connexion'] == 'error') {
            echo '<p>erreur de connexion</p>';
        }
    } else {
    }

    echo '<form action="../controller/login_c.php" method="post">';
    echo '<input type="text" name="username" placeholder="username">';
    echo '<input type="password" name="password" placeholder="password">';
    echo '<input type="submit" value="Login">';
    echo '</form>';
}

<?php

if (isset($user)) {
    echo 'bonjour ' . $user['username'] . '<br>';
} else {
    header('Location: login_c.php');
}

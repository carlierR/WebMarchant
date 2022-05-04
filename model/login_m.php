<?php
require_once("../connect_bdd.php");

function login(){
    if (isset($_POST['username']) && isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        global $pdo;
        $query = $pdo->prepare('SELECT * FROM users WHERE username = :username');
        $query->execute(array(
            'username' => $username,
        ));
        $user = $query->fetch();
        
        if($user == null || $user['password'] != MD5($password)){
             echo '<p>erreur de connexion</p>';
        } else {
            $_SESSION['username'] = $username;
            $_SESSION['id'] = $user['id'];
                header('Location: ../controller/catalogue_c.php');
        }
    }
}

function logout(){
    session_destroy();
    header('Location: ../view/loginform_v.php');
}
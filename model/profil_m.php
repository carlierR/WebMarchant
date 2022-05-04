<?php

require_once("../connect_bdd.php");

function getUserById($id) {
    global $pdo;
    $sql_r = $pdo->prepare("SELECT * FROM users WHERE id = :id");
    $sql_r->bindValue(':id', $id);
    $sql_r->execute();
    try {
        $res_r = $sql_r->fetch();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

function getUser() {
    if (isset($_SESSION['id'])) {
        return getUserById($_SESSION['id']);
    }
    return null;
}

$user = getUser();

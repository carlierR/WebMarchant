<?php
require_once('../connect_bdd.php');
require_once('article_m.php');

 function createCommande($id_user, $date){
    global $pdo;
    $source_sql_c = "insert into commandes (fk_user, date_cmd) values (:id_user, :date)";
    $sql_c = $pdo->prepare($source_sql_c);
    $sql_c->bindParam(':id_user', $id_user);
    $sql_c->bindParam(':date', $date);
    $sql_c->execute();
    $id_cmd = $pdo->lastInsertId();
    return $id_cmd;
}

function addArticleToCommande($commande, $id_art, $qte, $price){
    global $pdo;
    $source_sql_a = "insert into article_commande (fk_cmd, fk_art, quantity, price) values (:commande, :id_art, :qte, :price)";
    $sql_a = $pdo->prepare($source_sql_a);
    $sql_a->bindParam(':commande', $commande);
    $sql_a->bindParam(':id_art', $id_art);
    $sql_a->bindParam(':qte', $qte);
    $sql_a->bindParam(':price', $price);
    $sql_a->execute();

}

function getCommandeByUser($id_user){
    global $pdo;
    $source_sql_g = "select * from commandes where fk_user = :id_user";
    $sql_g = $pdo->prepare($source_sql_g);
    $sql_g->bindParam(':id_user', $id_user);
    $sql_g->execute();
    try{
        $res_g = $sql_g->fetchAll();
    }
    catch(PDOException $e){
        echo "erreur".$e->getMessage();
        die();
    }
    return $res_g;
}

function getarticleByCommand($id_cmd){
    global $pdo;
    $source_sql_g = "select * from article_commande where fk_cmd = :id_cmd";
    $sql_g = $pdo->prepare($source_sql_g);
    $sql_g->bindParam(':id_cmd', $id_cmd);
    $sql_g->execute();
    try{
        $res_g = $sql_g->fetchAll();
    }
    catch(PDOException $e){
        echo "erreur".$e->getMessage();
        die();
    }
    return $res_g;
}

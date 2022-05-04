<?php
require_once('../connect_bdd.php');

function update_article($id){
    global $pdo;
    $sql_u =$pdo->prepare("SELECT * FROM articles where id_art =".$id);
    $sql_u->execute();
    try{
        $res_u =$sql_u->fetchAll(); 
    }
    catch(PDOException $e){
        echo "erreur".$e->getMessage();
        die();
    }
    return $res_u;
}

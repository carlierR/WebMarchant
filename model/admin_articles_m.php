<?php
require_once('../connect_bdd.php');

if(isset($_GET['mode'])){
    if($_GET["mode"] == "delete"){
        $source_sql_d= "delete from articles where id_art =".$_GET["id"];
        $sql_d= $pdo->prepare($source_sql_d);
        $sql_d->execute(); 
        header('Location:    admin_articles_c.php');
    }
    if($_GET["mode"] == "create"){
        $source_sql_c= "insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('".$_POST['nom_article']."', '".$_POST['designation_article']."', '".$_POST['fk_categ']."', '".$_POST['quantity']."', '".$_POST['price']."')";
        $sql_c= $pdo->prepare($source_sql_c);
        $sql_c->execute(); 
        header('Location:    admin_articles_c.php');
    }
    if($_GET["mode"] == "update"){
        $source_sql_u= "update articles set nom_article = '".$_POST['nom_article']."', designation_article = '".$_POST['designation_article']."', fk_categ = '".$_POST['fk_categ']."', quantity ='".$_POST['quantity']."', price ='".$_POST['price']."' where id_art =".$_POST['id_article'];
        $sql_u= $pdo->prepare($source_sql_u);
        $sql_u->execute(); 
        header('Location:    admin_articles_c.php');
    }
}


function getAll(){
    global $pdo;
    $sql_r =$pdo->prepare("SELECT * FROM articles");
    $sql_r->execute();
    
    try{
        $res_r =$sql_r->fetchAll(); 
    }
    catch(PDOException $e){
        echo "erreur".$e->getMessage();
        die();
    }
    return $res_r;    
}

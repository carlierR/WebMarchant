<?php
require_once('../connect_bdd.php');



function getAll()
{
    global $pdo;
    $sql_r = $pdo->prepare("SELECT * FROM articles");
    $sql_r->execute();

    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

function getAllArticlesByCategory($categ)
{
    global $pdo;
    $sql_r = $pdo->prepare("SELECT * FROM articles, categories WHERE articles.fk_categ = categories.id_categ AND libbele_cat = :lib_cat");
    $sql_r->bindValue(':lib_cat', $categ);
    $sql_r->execute();

    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

function getAllCategories()
{
    global $pdo;
    $sql_r = $pdo->prepare("SELECT * FROM categories");
    $sql_r->execute();

    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

function getAllPagination($page, $nb_articles_par_page)
{
    global $pdo;
    $offset = ($page - 1) * $nb_articles_par_page;
    $sql_r = $pdo->prepare("SELECT * FROM articles order by nom_article LIMIT $nb_articles_par_page OFFSET $offset");
    $sql_r->execute();

    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

function getAllPaginationByCategories($categ, $page, $nb_articles_par_page)
{
    global $pdo;
    $offset = ($page - 1) * $nb_articles_par_page;
    $sql_r = $pdo->prepare("SELECT * FROM articles, categories WHERE fk_categ=id_categ AND libbele_cat = '" . $categ . "' order by nom_article LIMIT $nb_articles_par_page OFFSET $offset");
    $sql_r->execute();

    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r;
}

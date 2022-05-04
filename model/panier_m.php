<?php
require_once('../connect_bdd.php');

//ajout d'un article au panier + quantité
function add_item($id_art, $qte = 1)
{
    if (isset($_SESSION['panier'])) {
    } else {
        $_SESSION['panier'] = array();
    }
    if (isset($_SESSION['panier'][$id_art])) {
        $_SESSION['panier'][$id_art] += $qte;
    } else {
        $_SESSION['panier'][$id_art] = $qte;
    }
}

//récupérer les articles du panier
function get_article($id_art)
{
    global $pdo;
    $sql_r = $pdo->prepare("SELECT * FROM articles where id_art =" . $id_art);
    $sql_r->execute();
    try {
        $res_r = $sql_r->fetchAll();
    } catch (PDOException $e) {
        echo "erreur" . $e->getMessage();
        die();
    }
    return $res_r[0];
}

//supprime un article du panier
function delete_article($id_art)
{
    unset($_SESSION['panier'][$id_art]);
    header('Location: ../controller/panier_c.php');
}




//si mode = delete, supprime l'article selectionné
if (isset($_GET['mode']) && $_GET['mode'] == 'delete') {
    delete_article($_GET['id']);
}


//ajout d'item si post existe
if (isset($_POST['id_art'])) {
    add_item($_POST['id_art']);
    header('Location: ../controller/panier_c.php');
}

//vide le panier
if (isset($_POST['vider'])) {
    unset($_SESSION['panier']);
}

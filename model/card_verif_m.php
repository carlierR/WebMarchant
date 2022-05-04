<?php
require_once('../connect_bdd.php');
require_once('../model/commande_m.php');

function verifFile($file)
{

    $verif = false;
    global $pdo;
    $verifQuantity = true;
    $contents = file_get_contents($file);
    $contents = explode("\n", $contents);
    foreach ($contents as $values) {
        $cardInfo = explode(",", $values);
        if ($cardInfo[0] == $_POST['card_number']) {

            if ($cardInfo[1] == $_POST['card_date']) {

                if ((int)$cardInfo[2] == (int)$_POST['card_digit']) {

                    $verif = true;
                    break;
                }
            }
        }
    }




    if ($verif == true) {
        echo 'card valide';


        $sql_r = $pdo->prepare("SELECT * FROM articles");
        $sql_r->execute();
        try {
            $res_r = $sql_r->fetchAll();
        } catch (PDOException $e) {
            echo "erreur" . $e->getMessage();
            die();
        }
        foreach ($_SESSION['panier'] as $id_art => $qte) {
            foreach ($res_r as $article) {
                if ($article['id_art'] == $id_art) {
                    if ($article['quantity'] < $qte) {
                        echo 'test';
                        $verifQuantity = false;
                    }
                }
            }
        }
        if ($verifQuantity == true) {

            $commande = createCommande($_SESSION['id'], date('Y-m-d'));
            foreach ($_SESSION['panier'] as $id_art => $qte) {
                $source_sql_u = "update articles set quantity  = quantity - " . $qte . " where id_art =" . $id_art;
                $sql_u = $pdo->prepare($source_sql_u);
                $sql_u->execute();
                $prix = get_article($id_art);
                addArticleToCommande($commande, $id_art, $qte, $prix[0]['price'] * $qte);
            }
            unset($_SESSION['panier']);
        }
    } else {
        echo 'card non valide';
        header('Location: ../controller/card_form_c.php');
    }
}

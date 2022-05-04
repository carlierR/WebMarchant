<?php

if (isset($user)) {
    $commande = getCommandeByUser($_SESSION['id']);

    foreach ($commande as $commande) {
        echo 'Commande n' . $commande['id_cmd'] . '<br>';
        echo '<ul>';
        $produits = getarticleByCommand($commande['id_cmd']);
        foreach ($produits as $produit) {
            echo '<li>' . get_article($produit['fk_art'])[0]['nom_article'] . '&nbsp|&nbsp' . ' x' . $produit['quantity'] . '&nbsp|&nbsp' . ' Prix:' . $produit['price'] . '€' . '</li>';
        }
        echo '</ul>';
    }
} else {
    echo 'connectez vous pour voir vos commandes';
}

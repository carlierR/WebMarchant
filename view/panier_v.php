<?php

    if(isset($_SESSION['panier']) && count($_SESSION['panier']) > 0){
        $total = 0;
        foreach($_SESSION['panier'] as $id_art => $qte){
            echo get_article($id_art)['nom_article']." quantité :".$qte."&nbsp|&nbsp prix: ";

            echo get_article($id_art)['price']*$qte;
            echo "€";
            $total = $total + get_article($id_art)['price']*$qte;
            echo " <a href='../controller/panier_c.php?mode=delete&id=".$id_art."'>Supprimer</a>.<br>";
        }
        echo "Total : ".$total.'€';
    }

 
    echo "<br>";

    if(isset($user['role'])){
        if(isset($_SESSION['panier'])){
                echo "<form action='../controller/card_form_c.php' method='post'>";
                echo "<input type='submit' value='Paiement'>";
                echo "</form>";
                echo "<form action='../controller/panier_c.php' method='post'>";
                echo "<input type='submit' name='vider' value='Vider le panier'>";
                echo "</form>";
        }
        else{
            echo "Votre panier est vide <p>";
            echo "<form action='../controller/panier_c.php' method='post'>";
            echo "<input type='submit' name='vider' value='Vider le panier' disabled>";
            echo "</form>";
        }

    }else{
        echo "<h3>Vous devez vous connecter pour passer votre commande<h3>";
    }

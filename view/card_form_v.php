<?php

if(isset($user)){
    if(isset($_SESSION['panier'])){
        echo '<form method="post" action="card_verif_c.php">';
        echo '<label for="card_number">Card Number</label>';
        echo '<input type="text" name="card_number" id="card_number" required>';
        echo '<label for="card_date">Card Date</label>';
        echo '<input type="text" name="card_date" id="card_date" required>';
        echo '<label for="card_digit">Card Digit</label>';
        echo '<input type="text" name="card_digit" id="card_digit" required>';
        echo '<input type="submit" value="Submit">';
        echo '</form>';
    }else{
        echo '<h3>Votre panier est vide</h3>';
        header('Location: catalogue_c.php');
    }

}else{
    echo '<h3>Vous devez vous connecter pour passer votre commande<h3>';
    header('Location: login_c.php');
}

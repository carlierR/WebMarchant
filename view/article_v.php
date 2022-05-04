<?php


$article = get_article($_GET['id']);

if($article != null){
    echo($article[0]['nom_article'].'<br>');
    echo($article[0]['designation_article']);
    echo '<br>';
    echo 'stock : '.$article[0]['quantity']."&nbsp|&nbsp";
    echo 'prix : '.$article[0]['price']."&nbsp€&nbsp";
    echo "<form action='../controller/panier_c.php' method='post'>";
    echo "<input type='hidden' name='id_art' value='".$article[0]['id_art']."'>";
    if($article[0]['quantity'] > 0){
        echo "<input type='submit'  value='Ajouter au panier'>";

    }else{
        echo "<input type='submit'  value='Rupture de stock' disabled>";
    }
    echo "</form>";
    echo "<br>";
}
else{
    echo "article not found";
}

<?php 
//récupére la variable de l'utilisateurs connecté depuis la bdd
include "../model/profil_m.php";

//navbar
$html = "
        <a href='../controller/catalogue_c.php'>Catalogue</a>
        <a href='../controller/panier_c.php'>Panier</a>
        <a href='../controller/commande_c.php'>Mes Commandes</a>

";
if(isset($user)){
    $html .= "
        <a href='../controller/profil_c.php'>Mon profil</a>
    ";

    if($user['role'] == 'admin'){
        $html .= "
            <a href='../controller/admin_articles_c.php'>Admin</a>
        ";
    }
}
else{
    $html .= "
        <a href='../controller/login_c.php'>Connexion</a>
    ";
}



    $html.="
    <br>
    <br>
    
    "
    ;
    echo $html;
    echo '<form action="../controller/login_c.php?connection=logout">';
    echo '<input type="submit" id="connection" name="connection" value="logout">';
    echo '</form>';    
?>
<?php


if (isset($user) && isset($user['role']) == 'admin') {
    echo "<a href='../controller/form_articles_c.php?mode=create'>Create</a><br>";
    $res_r = getAll();
    foreach ($res_r as $row => $link) {
        echo $link['nom_article'] . " ";
        echo "<a href='../controller/form_articles_c.php?mode=update&id=" . $link['id_art'] . "'>modifier</a>&nbsp|&nbsp;
        <a href='../controller/admin_articles_c.php?mode=delete&id=" . $link['id_art'] . "'>supprimer</a><br>";
        echo "<br>";
    }
} else {

    echo "Vous n'avez pas accès à cette page <br>";
    echo "<a href='../view/loginform_v.php'>Login</a>";
}

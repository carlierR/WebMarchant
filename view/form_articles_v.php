<?php


if(isset($_GET['mode'])){
    if($_GET["mode"] == "create"){
        echo '<form action="../controller/admin_articles_c.php?mode=create" method="post">

        <label for="nom_article">Nom article</label>
        <input type="text" name="nom_article" placeholder="nom_article">
        <label for="designation_article">Désignation article</label>
        <textarea name="designation_article" id="designation_article"></textarea>
        <label for="fk_cat">Catégorie</label>
        <select name="fk_categ" id="fk_categ">
            <option value="1">cat1</option>
            <option value="2">cat2</option>
            <option value="3">cat3</option>
        </select>
        <label for="quantity">Quantité</label>
        <input type="number" name="quantity" placeholder="quantity">
        <label for="price">Prix</label>
        <input type="number" name="price" placeholder="price">
        
        <input type="submit" value="Create">
        </form>';
    }
    if($_GET["mode"] == "update"){  
        $article = update_article($_GET['id']);
        echo($article[0]['nom_article']);

        echo '<form action="../controller/admin_articles_c.php?mode=update" method="post">
        <label for="nom_article">Nom article</label>
        <input type="text" name="nom_article" value="'.$article[0]['nom_article'].'">
        <label for="designation_article">Désignation article</label>
        <textarea name="designation_article" id="designation_article">'.$article[0]['designation_article'].'</textarea>
        <label for="fk_categ">Catégorie</label>
        <select name="fk_categ" id="fk_categ">
            <option value="1">cat1</option>
            <option value="2">cat2</option>
            <option value="3">cat3</option>
            <option value="4">cat4</option>
            <option value="5">cat5</option>
            <option value="6">cat6</option>
            <option value="7">cat7</option>
            <option value="8">cat8</option>
            <option value="9">cat9</option>
        </select>
        <label for="quantity">Quantité</label>
        <input type="number" name="quantity" value="'.$article[0]['quantity'].'">
        <label for="price">Prix</label>
        <input type="number" name="price" value="'.$article[0]['price'].'">
        <input type="hidden" name="id_article" value="'.$article[0]['id_art'].'">
        <input type="submit" value="Update">
        </form>';
    }
}

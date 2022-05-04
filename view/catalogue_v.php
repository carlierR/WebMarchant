<?php

$page = 1;
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}
$nb_articles_par_page = 5;

$categories = getAllCategories();
foreach ($categories as $categ) {
    echo '<a href="?page=1&categ=' . $categ['libbele_cat'] . '">' . $categ['libbele_cat'] . '</a> &nbsp|&nbsp;';
}

echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>';    

echo "<br>";
echo "<br>";

if (isset($_GET['categ'])) {
    $allArticles = getAllArticlesByCategory($_GET['categ']);
    $res_r = getAllPaginationByCategories($_GET['categ'], $page, $nb_articles_par_page);
    foreach ($res_r as $row => $link) {
        echo "<a href='../controller/article_c.php?id=" . $link['id_art'] . "'>" . $link['nom_article'] . "</a>&nbsp|&nbsp;";
        echo 'stock : ' . $link['quantity'] . "&nbsp|&nbsp";
        echo 'prix : ' . $link['price'] . "&nbsp€&nbsp";
        echo "<br>";
    }
    echo "<br>";
    $nbLink = ceil(count($allArticles) / $nb_articles_par_page);

    echo '<a href="?page=1&categ='.$categ['libbele_cat'].'">Début</a>&nbsp|&nbsp;';
    for ($i = $page; $i <= 20; $i++) {
        echo '<a href="../controller/catalogue_c.php?page=' . $i . '.&categ='. $categ['libbele_cat'].'">' .round($i) . '</a>&nbsp|&nbsp';
    }
    echo '<a href="../controller/catalogue_c.php?page=' . $nbLink . '.&categ='. $categ['libbele_cat']. '">Fin</a>&nbsp|&nbsp;';
} else {
    $allArticles = getAll();
    $res_r = getAllPagination($page, $nb_articles_par_page);
    foreach ($res_r as $row => $link) {
        echo "<a href='../controller/article_c.php?id=" . $link['id_art'] . "'>" . $link['nom_article'] . "</a>&nbsp|&nbsp;";
        echo 'stock : ' . $link['quantity'] . "&nbsp|&nbsp";
        echo 'prix : ' . $link['price'] . "&nbsp€&nbsp";
        echo "<br>";
    }
    echo "<br>";
    $nbLink = ceil(count($allArticles) / $nb_articles_par_page);
    echo '<a href="?page=1">Début</a>&nbsp|&nbsp;';
    for ($i = $page; $i <= 20; $i++) {
        echo '<a href="../controller/catalogue_c.php?page=' . $i . '">' . $i . '</a>&nbsp|&nbsp';
    }
    echo '<a href="../controller/catalogue_c.php?page=' . $nbLink . '">Fin</a>&nbsp|&nbsp;';
}




echo '<br>';


<?php
try {
    $pdo = new PDO('mysql:host=localhost; dbname=LPMI2022-GR4', 'root', '');
    }
catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
?>
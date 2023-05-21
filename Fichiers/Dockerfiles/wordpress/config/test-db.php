<?php
$link = mysqli_connect("localhost", "wordpress", "wordpress", "wordpress");
if (!$link){
    die("ERREUR: Impossible de se connecter. " . mysqli_connect_error());
}

echo "Connexion réussie. Hôte info: " . mysqli_get_host_info($link);

?>
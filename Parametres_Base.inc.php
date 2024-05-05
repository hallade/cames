<?php
$serveur = "localhost";
$utilisateur = "root";
$mot_de_passe = "";
$base_de_donnees = "bd_sitecames";

// Connexion à la base de données
$mysqli = mysqli_connect($serveur, $utilisateur, $mot_de_passe, $base_de_donnees);

// Vérifier la connexion
if (!$mysqli) {
    die("La connexion à la base de données a échoué : " . mysqli_connect_error());
}

// Sélectionner la base de données
if (!mysqli_select_db($mysqli, $base_de_donnees)) {
    die("Sélection de la base de données a échoué : " . mysqli_error($mysqli));
}
?>

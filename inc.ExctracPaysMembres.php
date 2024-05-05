
<?php
//Affichage des infos des Pays %ebres

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlPaysM= "SELECT libperiode AS  'Mise en ligne le', titinformation AS Titre, graphotoinformation AS Photo, intinformation AS Détail
FROM information, sousrubrique, rubrique, periode, statut
WHERE information.codsousrubrique = sousrubrique.codsousrubrique
AND sousrubrique.codrubrique = rubrique.codrubrique
AND information.per_codperiode2 = periode.codperiode
AND information.codstatut = statut.codstatut
AND statut.libstatut =  'Nouveau'
AND rubrique.librubrique =  'ACCUEIL'
AND sousrubrique.libsousrubrique =  'PAYS MEMBRES'

LIMIT 0 , 30
";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlPaysM = $mysqli -> query($sqlPaysM) or die('Erreur SQL !<br />'.$sqlPaysM.'<br />'.$mysqli -> error);



while ( ( $PaysMembres = $sqlPaysM ->fetch_array() )  )

{
	
$LignePM=$PaysMembres;

}


//Refermons La base
$mysqli -> close ();
?>

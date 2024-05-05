
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli-> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlEvents= "SELECT codinformation AS ID, libperiode AS 'Mise en ligne le', titinformation AS Titre, graphotoinformation AS Photo, petphotoinformation AS Vignette, intinformation AS Détail
FROM information, sousrubrique, rubrique, periode, statut
WHERE information.codsousrubrique = sousrubrique.codsousrubrique
AND sousrubrique.codrubrique = rubrique.codrubrique
AND information.per_codperiode2 = periode.codperiode
AND information.codstatut = statut.codstatut
AND statut.libstatut = 'Nouveau'
AND rubrique.librubrique = 'ACCUEIL'
AND sousrubrique.libsousrubrique = 'EVENEMENTS'
AND codinformation = '".$var."'";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlEvents = $mysqli -> query($sqlEvents) or die('Erreur SQL !<br />'.$sqlEvents.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Events = $sqlEvents -> fetch_array() )  )

{	
$LigneEvt_Indiv=$Events;
}


//Refermons La base
$mysqli -> close ();
?>

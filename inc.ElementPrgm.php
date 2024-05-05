
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlElemPrgm= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID,titinformation as Titre, graphotoinformation as Photo, intinformation as Détail FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='NOS PROGRAMMES' AND information.codinformation='".$var."'";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlElemPrgm = $mysqli -> query($sqlElemPrgm) or die('Erreur SQL !<br />'.$sqlElemPrgm.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $ElmtPrgm = $sqlElemPrgm -> fetch_array() )  )

{$LigneElmtPrgm=$ElmtPrgm;}


//Refermons La base
$mysqli -> close ();
?>

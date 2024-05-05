<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlActu= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID, titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='ACTUALITES' AND information.codinformation='".$var."'";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlActu = $mysqli -> query($sqlActu) or die('Erreur SQL !<br />'.$sqlActu.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Actu = $sqlActu -> fetch_array() )  )

{	
$LigneAct_Indiv=$Actu;
}


//Refermons La base
$mysqli -> close ();
?>

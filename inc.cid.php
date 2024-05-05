
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql= "
SELECT codinformation as Id,libperiode as 'Mise en ligne le',titinformation as Titre,petphotoinformation as Vignette , graphotoinformation as Photo, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='C.I.D.' AND sousrubrique.libsousrubrique='PRESENTATION DU C.I.D.' order by libperiode desc LIMIT 1;";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Data = $sql ->fetch_array() )  )

{	
$Ligne=$Data;
}


//Refermons La base
$mysqli -> close ();
?>

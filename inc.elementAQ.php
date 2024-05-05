<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlElement= "SELECT codinformation as Id,libperiode as 'Mise en ligne le',titinformation as Titre, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ASSURANCE QUALITE' AND sousrubrique.libsousrubrique='EVALUATION ET ACCREDITATION' AND information.codinformation='".$var."'order by libperiode desc LIMIT 1;";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlElement = $mysqli -> query($sqlElement) or die('Erreur SQL !<br />'.$sqlElement.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Element = $sqlElement -> fetch_array() )  )

{	
$Ligne_Element=$Element;
}


//Refermons La base
$mysqli -> close ();
?>

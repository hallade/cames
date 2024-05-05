
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlElemPrgm= "SELECT information.codinformation as Id,titinformation as Titre, nompiecejointe as Intitulé,libpiecejointe as Téléchargements  FROM piecejointe, information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ASSURANCE QUALITE' AND sousrubrique.libsousrubrique='REFERENTIELS' AND information.codinformation=piecejointe.codinformation";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlElemPrgm = $mysqli -> query($sqlElemPrgm) or die('Erreur SQL !<br />'.$sqlElemPrgm.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $ElmtPrgm = $sqlElemPrgm -> fetch_array() )  )

{
	$Ligne=$ElmtPrgm;

echo '  <li><span style="tex-align:left; padding-left:10px"><img src="images/dc85rjzMi.png" width=15px style="vertical-align:middle;"></span>
       <span style="tex-align:left; padding-left:10px"><a href="'.$Ligne['Téléchargements'].'" target="_blank">'.$Ligne['Intitulé'].'</a></span>
  </li>';

}


//Refermons La base
$mysqli -> close ();
?>

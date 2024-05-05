
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlEvents= "SELECT(SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2) AS 'Mise en ligne le', (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode) AS DU,(SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) AS AU,titinformation AS Intitulé,nompiecejointe as Titre,libpiecejointe AS Téléchargements FROM information,sousrubrique,rubrique,periode, piecejointe WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND rubrique.codrubrique=sousrubrique.codrubrique AND periode.codperiode=information.per_codperiode2 AND piecejointe.codinformation=information.codinformation AND sousrubrique.libsousrubrique='FORMATIONS' AND rubrique.librubrique='OPPORTUNITES' AND (SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) > CURDATE()  order by (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2);";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlEvents = $mysqli -> query($sqlEvents) or die('Erreur SQL !<br />'.$sqlEvents.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Events = $sqlEvents-> fetch_array() )  ) 
 
{	
$Ligne=$Events;

 echo "<TR align=\"center\">";
 echo "<TD class=\"DétailOpp\">".Transform($Ligne['Mise en ligne le'])."</TD>";
 echo "<TD class=\"DétailOpp\">".Transform($Ligne['DU'])."</TD>";
 echo "<TD class=\"DétailOpp\">".Transform($Ligne['AU'])."</TD>";
 echo "<TD class=\"DétailOpp\"><a href=\"".$Ligne['Téléchargements'] ."\" target='_blank'>".$Ligne['Titre']."</a></TD>";
 echo "</TR>"; 



}


//Refermons La base
$mysqli -> close ();
?>

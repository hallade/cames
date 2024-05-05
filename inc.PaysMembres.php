
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlEvents= "SELECT pays.codpays as Id,libpays as Pays, libsiteweb as 'Site web', libperiode as Periode FROM pays, siteweb, periode, zone,appartenance WHERE pays.codpays=siteweb.codpays AND pays.codzone=zone.codzone AND pays.codappartenance=appartenance.codappartenance and appartenance.libappartenance='pays membres du cames' AND pays.codperiode=periode.codperiode order by libpays asc";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlEvents = $mysqli -> query($sqlEvents) or die('Erreur SQL !<br />'.$sqlEvents.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Events = $sqlEvents -> fetch_array() )  )

{	
$Ligne=$Events;

 echo "<TR align=\"left\">";
 echo "<TD class=\"DétailOpp\">".$Ligne['Pays']."</TD>";
 echo '<TD class="DétailOpp"><a href="'.$Ligne['Site web'].'">'.$Ligne['Site web'].'</a></TD>';
 echo "<TD class=\"DétailOpp\">".Transform($Ligne['Periode'])."</TD>";

 echo "</TR>"; 



}


//Refermons La base
$mysqli -> close ();
?>

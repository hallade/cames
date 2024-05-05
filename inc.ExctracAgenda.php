
<?php
//Affichage des infos de l'Agenda

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements



$sqlAgenda= "SELECT(SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2) AS 'Mise en ligne le', (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode) AS DU,(SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) AS AU,codinformation AS ID,titinformation AS Intitulé FROM information,sousrubrique,rubrique,periode,statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND rubrique.codrubrique=sousrubrique.codrubrique AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau'  AND periode.codperiode=information.per_codperiode2 AND  sousrubrique.libsousrubrique='AGENDA' AND rubrique.librubrique='PIED DE PAGE' AND (SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) > CURDATE()  order by (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2)
";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlAgenda = $mysqli -> query($sqlAgenda) or die('Erreur SQL !<br />'.$sqlAgenda.'<br />'.$mysqli -> error);


$Compteur=1;
// on va scanner tous les tuples un par un


while ( ( $Ligne_Agenda = $sqlAgenda -> fetch_array() )  )

{
	
if ($Compteur==1){$Ligne_Agenda_1=$Ligne_Agenda;}
if ($Compteur==2){$Ligne_Agenda_2=$Ligne_Agenda;}
if ($Compteur==3){$Ligne_Agenda_3=$Ligne_Agenda;}
if ($Compteur==4){$Ligne_Agenda_4=$Ligne_Agenda;}


$Compteur=
$Compteur+1;
}


//Refermons La base
$mysqli -> close ();
?>

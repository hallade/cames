
<?php
//Affichage des infos du SLIDE

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlSlide= "
SELECT libperiode as 'Mise en ligne le',codinformation AS ID,titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='SLIDE' order by libperiode desc;";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlSlide = $mysqli -> query($sqlSlide) or die('Erreur SQL !<br />'.$sqlSlide.'<br />'.$mysqli -> error);


$Compteur=1;
// on va scanner tous les tuples un par un


while ( ( $Slide =$sqlSlide -> fetch_array() )  )

{
	
if ($Compteur==1){$Ligne_1=$Slide;}

if ($Compteur==2){$Ligne_2=$Slide;}

if ($Compteur==3){$Ligne_3=$Slide;}


$Compteur=$Compteur+1;
}


//Refermons La base
$mysqli -> close ();
?>

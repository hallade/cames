
<?php

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID, titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut  AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='ACTUALITES' AND information.codinformation != '".$var."' order by libperiode desc";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $ActuDif =$sql -> fetch_array() )  )

{
	
$LigneActuDif=$ActuDif;

echo '

      <div class="BlocMiniature4" style="">
<span class="TitleInfo" style="color:#000000;padding-left:10px;padding-top:8px;"> '.Transform($LigneActuDif['Mise en ligne le']).'</span>

        <img src="images/'.$LigneActuDif['Photo'].'" width="90px" style="margin-left:8px;float:left;padding:2px;border:solid 1px #fff;">
		
	    <div style="float:left;width:60%;">
		    <a href="Page-Actu.php?passage='.$LigneActuDif['ID'].' " class="LinkBxVert" >'.$LigneActuDif['Titre'].' </a> 
		</div>	
		<div style="clear:both;"></div>
		
		</div>';

}


//Refermons La base
$mysqli -> close ();
?>

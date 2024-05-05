
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 



// on prépare la requête1 enregistrements

$sql= "SELECT codinformation AS ID,(SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2) AS 'Mise en ligne le',
(SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode) AS DU,
(SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) AS AU,
PETPHOTOINFORMATION AS Vignette,
titinformation AS Intitulé FROM information,
sousrubrique,
rubrique,
periode 
WHERE information.codsousrubrique = sousrubrique.codsousrubrique AND sousrubrique.codrubrique = rubrique.codrubrique AND information.per_codperiode2 = periode.codperiode AND rubrique.librubrique = 'ACCUEIL' AND sousrubrique.libsousrubrique = 'EVENEMENTS'  order by Du desc ";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);


// on va scanner tous les tuples un par un


while ( ( $EventsDif =$sql -> fetch_array() )  )

{
	
$LigneEvtDif=$EventsDif;

echo '
      <div class="BlocMiniature2" style="">
<span class="TitleInfo" style="color:#000000;padding-left:10px;padding-top:8px;"> DU '.Transform($LigneEvtDif['DU']).' AU '.Transform($LigneEvtDif['AU']).'</span>

        <img src="images/'.$LigneEvtDif['Vignette'].'" width="90px" style="margin-left:8px;float:left;padding:2px;border:solid 1px #fff;">
		
	    <div style="float:left;width:60%;">
		    <a href="Page-Event.php?passage='.$LigneEvtDif['ID'].' " class="LinkBxVert" >'.$LigneEvtDif['Intitulé'].' </a> 
	    </div>	
		<div style="clear:both;"></div>
		
      </div>';
		
		
	

}


//Refermons La base
$mysqli -> close ();
?>

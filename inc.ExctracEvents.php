
<?php
//Affichage des infos des Evenements

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlEvents= "SELECT codinformation AS ID,
 (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode2) AS 'Mise en ligne le',
(SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode) AS DU,
(SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) AS AU,
PETPHOTOINFORMATION AS Vignette,
titinformation AS Intitulé FROM information,
sousrubrique,
rubrique,
periode 
WHERE information.codsousrubrique=sousrubrique.codsousrubrique 
AND rubrique.codrubrique=sousrubrique.codrubrique AND periode.codperiode=information.per_codperiode2 
AND sousrubrique.libsousrubrique='EVENEMENTS' AND rubrique.librubrique='ACCUEIL' 
AND (SELECT libperiode FROM periode WHERE periode.codperiode=information.codperiode) > CURDATE()  
order by (SELECT libperiode FROM periode WHERE periode.codperiode=information.per_codperiode) LIMIT 2;";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlEvents = $mysqli -> query($sqlEvents) or die('Erreur SQL !<br />'.$sqlEvents.'<br />'.$mysqli -> error);


$Compteur=0;
// on va scanner tous les tuples un par un


while ( ( $Events = $sqlEvents -> fetch_array() )  )

{
$LigneEvt_1=$Events;

echo' <!--Debut Element d\'info 1-->';
echo '    <div  class="Arrondi BlocInfo" > 
              <span class="TitleInfo" style="color:#f6c33b;padding-left:10px;padding-top:8px;"> DU '.Transform($LigneEvt_1['DU']).' AU '.Transform($LigneEvt_1['AU']).'</span>';

	
echo '<img src="images/'.$LigneEvt_1['Vignette'].'?> class="ImgActuInfo style="float:left;margin-top:6px;margin-left:5px;""> 			    
                                  
            <h3 class="TitleInfo" style="float:left;margin-top:10px;margin-left:5px;">';
                              
echo '<a href="Page-Event.php?passage='.$LigneEvt_1['ID'].'" >'.$LigneEvt_1['Intitulé'].'</a>';
echo '</h3>             
      <div style="clear:both"></div> 
                
     </div>';
echo' <!--Fin Element d\'info 1-->';
            
$Compteur=$Compteur+1;
}


//Refermons La base
$mysqli -> close ();


if ($Compteur==0) {echo '<img src="images/evenements/evenements.jpg" width=100%>';echo '<img src="images/evenements/evenements2.jpg" width=100%>';}
if ($Compteur==1) {echo '<img src="images/evenements/evenements.jpg" width=100%>';}





?>

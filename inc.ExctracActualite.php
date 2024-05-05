
<?php
//Affichage des infos de l'ACTUALITE

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlACTU= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID, titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='ACTUALITES' order by libperiode  desc LIMIT 5 ";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlACTU = $mysqli -> query($sqlACTU) or die('Erreur SQL !<br />'.$sqlACTU.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $ACTU = $sqlACTU ->fetch_array() )  )

{
	
echo '<!--+++++++++++++++++++++++--> ';          
echo '<!--Debut Element dActu  1-->';
echo '<div  class="Arrondi BlocActu" > ';  
echo'    <img src="images/'.$ACTU['Vignette'].'"class="ImgActu" ">';
	        

             
echo ' <!--Titre+Date+Details DEBUT-->';
echo ' <div style="width:70%;height:auto;float:left;"> ';
                                               
echo '              <h3 class="TitleActu" style="width:100%;">';
echo '                    <a  href="Page-Actu.php?passage='.$ACTU['ID'].'">'.$ACTU['Titre'].'</a>';
echo '              </h3> ';
echo '<p class="DateMiseLigne">'.Transform($ACTU['Mise en ligne le']).'</p>';

                      
echo '              
</div> 
<!--Titre+Date+Details FIN-->
<div style="clear:both"></div>
</div>
<!--Fin Element dActu 1-->
<!--+++++++++++++++++++++++-->
'; 
	
	

}


//Refermons La base
$mysqli -> close ();
?>

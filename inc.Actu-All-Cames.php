
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlActuCames= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID, titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='ACTUALITES' order by libperiode desc;";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlActuCames = $mysqli->query($sqlActuCames) or die('Erreur SQL !<br />'.$sqlActuCames.'<br />'.$mysqli->error);



$Compteur=1;
// on va scanner tous les tuples un par un


while ( ( $ActuCames = $sqlActuCames ->  fetch_array() )  )

{	

$LigneAct_Cames=$ActuCames;


//Maintenant les plus petits Bloc la !
if ($Compteur!=1)
    {
//--Autres Bloc (Les moins récent) DEBUT
echo '<div class="SmallBloc" style="float:left;">';
echo '<img src="images/'.$LigneAct_Cames['Photo'].'?>" class="ImgAll2"  width=100% height=125px/>';
echo '<a href="Page-Actu.php?passage='.$LigneAct_Cames['ID'].' " class="LinkAll2"   align="left"  style="">'.$LigneAct_Cames['Titre'].' </a>';
echo '<p class="DatePubAll2">'; 
echo '  Publié le : '.Transform( $LigneAct_Cames['Mise en ligne le'] );  
echo '  |';
   
echo ' <span style="padding:1px 8px 1px 8px;background-color:#900;font-size:11px;color:#fff;" class="Arrondi">Actualité </span> </p>';


echo '<p class="DétailAll2">'.substr($LigneAct_Cames['Détail'],0,116).'... </p>';
echo '</div>';
//--Premier Bloc (Les moins récent) FIN 		
}

 




//Affichage du Gros Bloc là
if ($Compteur==1)
   {//Premier Enregistrement, donc dans le plus gros Bloc
   
//--Premier Bloc (Le plus récent) DEBUT
echo '<div class="BigBloc" style="float:left;">';
echo '<img src="images/'.$LigneAct_Cames['Photo'].'?>" class="ImgAll"  width=100% height=270px/>';
echo '<a href="Page-Actu.php?passage='.$LigneAct_Cames['ID'].' " class="LinkAll2"   align="left"  style="">'.$LigneAct_Cames['Titre'].' </a>';
echo '<p class="DatePubAll">'; 
echo '  Publié le : '.Transform( $LigneAct_Cames['Mise en ligne le'] );  
echo '  |';
   
echo ' <span style="padding:1px 8px 1px 8px;background-color:#900;font-size:11px;color:#fff;" class="Arrondi">Actualité </span> </p>';


echo '<p class="DétailAll">'.substr($LigneAct_Cames['Détail'],0,906).'... </p>';

echo '</div>';
//--Premier Bloc (Le plus récent) FIN 
}


$Compteur=$Compteur+1; 



 
 
 
}


//Refermons La base
$mysqli -> close ();
?>

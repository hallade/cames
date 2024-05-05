
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlActuSG= "SELECT libperiode as 'Mise en ligne le',codinformation AS ID,titinformation as Titre, graphotoinformation as Photo,petphotoinformation as Vignette, intinformation as Détail  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut  AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='SLIDE' order by libperiode desc";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlActuSG = $mysqli -> query($sqlActuSG) or die('Erreur SQL !<br />'.$sqlActuSG.'<br />'.$mysqli -> error);



$Compteur=1;
// on va scanner tous les tuples un par un


while ( ( $ActuSG = $sqlActuSG -> fetch_array() )  )

{	

$LigneAct_SG=$ActuSG;


//Maintenant les plus petits Bloc la !
if ($Compteur!=1)
    {
//--Autres Bloc (Les moins récent) DEBUT
echo '<div class="SmallBloc" style="float:left;">';
echo '<img src="images/'.$LigneAct_SG['Photo'].'?>" class="ImgAll2"  width=100% height=125px/>';
echo '<a href="Page-Actu-Sec-Gen.php?passage='.$LigneAct_SG['ID'].' " class="LinkAll2"   align="left"  style="">'.$LigneAct_SG['Titre'].' </a>';
echo '<p class="DatePubAll2">'; 
echo '  Publié le : '.Transform( $LigneAct_SG['Mise en ligne le'] );  
echo '  |';
   
echo ' <span style="padding:1px 8px 1px 8px;background-color:#900;font-size:11px;color:#fff;" class="Arrondi">Actualité </span> </p>';


echo '<p class="DétailAll2">'.substr($LigneAct_SG['Détail'],0,116).'... </p>';
echo '</div>';
//--Premier Bloc (Les moins récent) FIN 		
}

 




//Affichage du Gros Bloc là
if ($Compteur==1)
   {//Premier Enregistrement, donc dans le plus gros Bloc
   
//--Premier Bloc (Le plus récent) DEBUT
echo '<div class="BigBloc" style="float:left;">';
echo '<img src="images/'.$LigneAct_SG['Photo'].'?>" class="ImgAll"  width=100% height=270px/>';
echo '<a href="Page-Actu-Sec-Gen.php?passage='.$LigneAct_SG['ID'].' " class="LinkAll2"   align="left"  style="">'.$LigneAct_SG['Titre'].' </a>';
echo '<p class="DatePubAll">'; 
echo '  Publié le : '.Transform( $LigneAct_SG['Mise en ligne le'] );  
echo '  |';
   
echo ' <span style="padding:1px 8px 1px 8px;background-color:#900;font-size:11px;color:#fff;" class="Arrondi">Actualité </span> </p>';


echo '<p class="DétailAll">'.substr($LigneAct_SG['Détail'],0,906).'... </p>';

echo '</div>';
//--Premier Bloc (Le plus récent) FIN 
}


$Compteur=$Compteur+1; 



 
 
 
}


//Refermons La base
$mysqli -> close ();
?>

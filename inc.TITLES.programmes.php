
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sqlTitle= "SELECT codinformation AS ID, titinformation as Titre  FROM information,sousrubrique,rubrique,periode, statut WHERE information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='ACCUEIL' AND sousrubrique.libsousrubrique='NOS PROGRAMMES' ";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sqlTitle = $mysqli -> query($sqlTitle) or die('Erreur SQL !<br />'.$sqlTitle.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Ligne = $sqlTitle -> fetch_array() )  )

      {      $Title=$Ligne['Titre'];
	  $Title_ID=$Ligne['ID'];            
	         
	    echo '<LI> <a class="Links_Blocs" href="Page-Programmes.php?passage='.$Title_ID.'">'.$Title.'</a></LI>';
	  
	   }


//Refermons La base
$mysqli -> close ();
?>

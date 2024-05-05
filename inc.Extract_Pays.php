
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql= "SELECT codpays as ID,libpays as Pays FROM pays WHERE codpays='".$Code_Du_Pays."'";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Ligne = $sql ->fetch_array() )  )

{	

$LigneOk=$Ligne;
$Nom_Du_Pays=$Ligne['Pays'];


 
 
}


//Refermons La base
$mysqli -> close ();
?>

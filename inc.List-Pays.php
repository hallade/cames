
<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql= "SELECT codpays as ID,libpays as Pays FROM pays ORDER BY pays.LIBPAYS ASC";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Ligne = $sql -> fetch_array() )  )

{	

$LigneOk=$Ligne;
$CodePays=$Ligne['ID'];

echo' <option value="'.$LigneOk['ID'].'">'.$LigneOk['Pays'].'</option>';
 
 
}


//Refermons La base
$mysqli -> close ();
?>

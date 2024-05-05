
<?php


// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql2= "SELECT libinstitution as Institution FROM institution,pays WHERE institution.codpays=pays.codpays and libpays='".$VAR_Pays."' order by institution asc";



/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql2 = $mysqli -> query($sql2) or die('Erreur SQL !<br />'.$sql2.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un


while ( ( $Ligne2 = $sql2 -> fetch_array() )  )

{	

$LigneOk2=$Ligne2;


echo' <option value="'.$LigneOk2['Institution'].'">'.$LigneOk2['Institution'].'</option>';
 
 
}


//Refermons La base
$mysqli -> close ();
?>

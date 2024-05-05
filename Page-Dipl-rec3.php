<?php
	// on la démarre notre session :)
	session_start ();
	//$_SESSION['ici la variable'] = la valeur;
	
if ( isset($_POST['ENVOI2']) )
   {
	      
	  
	   if ($_POST['University']=="Université"){  header('Location: Page-Dipl-rec2.php');  }
	   else 
	   {		   
		   include ('inc.CODE-Pays.php');
		   //Le pays est arrivé dans notre variable donc on peut continue
		   $Pays_EnCours=$Default_Pays=$Nom_Pays;
		   $Default_Univ="Université"; 

		   } 
	   } 




$Code_Du_Pays=$_SESSION['Val_CodePays'];
$Nom_Pays=$_SESSION['Val_NomPays'];


$COde_De_Universite=$_POST['University'];
include ('inc.Extract_Univ.php');
$Name_De_Univ= $NameUniv;









//Ma Fonction pour reorganiser en J/M/ANNEE
function Transform($Date)
{
list($year, $month, $day) = explode("-", $Date);


//On assigne donc le mois equivalent ici

if ($month=='01') {$month="JAN";}
if ($month=='02') {$month="FEV";}
if ($month=='03') {$month="MAR";}
if ($month=='04') {$month="AVR";}
if ($month=='05') {$month="MAI";}
if ($month=='06') {$month="JUIN";}
if ($month=='07') {$month="JUIL";}
if ($month=='08') {$month="AOUT";}
if ($month=='09') {$month="SEPT";}
if ($month=='10') {$month="OCT";}
if ($month=='11') {$month="NOV";}
if ($month=='12') {$month="DEC";}


$Date="$day/$month/$year";	
return $Date;
	}
///////////////////////////////////
//Affichage de l'ANNONCE
// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 




//Refermons La base
$mysqli -> close ();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Répertoire des diplômes</title>


<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="style-Cames.css" />
<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" charset="utf-8" />



	<link rel="stylesheet" type="text/css" href="source/jquery.fancybox.css?v=2.0.6" media="screen" />
    <link href='http://fonts.googleapis.com/css?family=Oxygen:400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>



	<script type="text/javascript" src="scripts/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="scripts/main.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="source/jquery.fancybox.js?v=2.0.6"></script>







<style type="text/css">   

		
	.Arrondi{      
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	behavior: url(scriptIE/PIE.htc);}
   
   .Arrondi360{
	   	-moz-border-radius:180px;
	-webkit-border-radius:180px;
	border-radius:180px;
	behavior: url(scriptIE/PIE.htc);
	   } 

.Arrondi3{	   	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	behavior: url(scriptIE/PIE.htc);}
	
.Arrondi10{	   	-moz-border-radius:8px;
	-webkit-border-radius:8px;
	border-radius:8px;
	behavior: url(scriptIE/PIE.htc);}
	
	.Ombre {
        -moz-box-shadow: 0 3px 5px #999; 
        -webkit-box-shadow: 0 3px 5px #999; 
        box-shadow: 0 3px 5px #999;
}
		
.ForBtn{
	box-shadow:0px 2px 5px #969696;
	-moz-box-shadow:0px 2px 5px #969696;
	-webkit-box-shadow:0px 2px 5px #969696;}	



	</style>
    




</HEAD>



<BODY>


<!--Debut Partie Haut de la Page TopPageHead-->
<!--TopPageHead-->
<Div class="Arrondi Ombre TopPageHead" >
            
<img src="images/Design/logo-cames-fd-transparent.png" width=10% style="margin:10px 10px 0px 10px ">


            
            
<!--******Debut Menu Horizontal******--> 
<?php include('inc.Mnu_Horiz.php'); ?>
<!--******Fin  Menu Horizontal******-->


<!--TopPageHead-->
</Div>
<!--Fin Partie Haut de la Page TopPageHead-->



<!--Debut corps page-->
<div id="CorpsPage" class="Ombre Arrondi" >


<!--Debut 1-->
<div  style="background-color:#fff;width:100%;height:400px;margin-top:10px;padding-top:0px;">

<!------------------->
<!--Bloc Left Debut-->
<!------------------->
<div class="BlocEventBig" style="float:left;height:280px;">

<br/>
<h2 class="TitleEvent"   align="center"  style="color:#cf3a24;">Diplômes reconnus</h2>
<br/><br/>

<?php 

 echo '
 <h2 class="TitleEvent"   align="center"  style="color:#cf3a24;">
  PAYS : '.$Nom_Pays.' . INSTITUTION : '.$Name_De_Univ.'

 </h2>'
;?>




<TABLE  border="1" bordercolor="#CCCCCC"  align="center" 
        style="border-collapse:collapse;margin-bottom:10px;">
        <TR style="background-color: #2d5fb2;color:#fff;">
<TD align=center class="Title3" style="color:#fff;padding-left:10px;padding-right:10px;">  Filière     </TD>
<TD align=center class="Title3" style="color:#fff;padding-left:10px;padding-right:10px;">  Diplôme     </TD>
<TD align=center class="Title3" style="color:#fff;padding-left:10px;padding-right:10px;">  Reconnu le  </TD>
<TD align=center class="Title3" style="color:#fff;padding-left:10px;padding-right:10px;">  Niveau      </TD>
</TR>
<?php 


// on se connecte à notre base
include("Parametres_Base.inc.php");
// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 
// on prépare la requête1 enregistrements


$sql3="SELECT pays.codpays AS IdPays, institution.codinstitution AS IdInstitution, libspecialite AS Filière, libdiplome AS 'Diplôme', libperiode AS 'Reconnu le', libniveau AS Niveau
FROM specialite, diplome, periode, niveau, institution, pays
WHERE institution.codinstitution = diplome.codinstitution
AND diplome.codniveau = niveau.codniveau
AND diplome.codperiode = periode.codperiode
AND diplome.codspecialite = specialite.codspecialite
AND pays.CODPAYS = '".$Code_Du_Pays."'
AND institution.CODINSTITUTION = '".$COde_De_Universite."'
AND DATEDIFF( CURDATE( ) , libperiode ) <=1825";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql3 = $mysqli ->query($sql3) or die('Erreur SQL !<br />'.$sql3.'<br />'.$mysqli -> error);
// on va scanner tous les tuples un par un
while ( ( $Ligne3 = $sql3 -> fetch_array() )  )
{	

$LigneOk3=$Ligne3;
echo '<TR>';
echo '<TD class="Title2">'.$LigneOk3['Filière'].'</TD>';
echo '<TD class="Title2">'.$LigneOk3['Diplôme'].'</TD>';
echo '<TD class="Title2">'.Transform($LigneOk3['Reconnu le']).'</TD>';
echo '<TD class="Title2">'.$LigneOk3['Niveau'].'</TD>';

echo '</TR>';

}
//Refermons La base
$mysqli -> close ();

?>
</TABLE>
 
<h3 align="center"><a href="Page-Dipl-rec.php" >Retour</a> </h3>
 
</div>
<!------------------->
<!--Bloc Left Fin  -->
<!------------------->





</div>
<!--Fin 1-->
<!--Partie Rejoignez-nous Debut-->
 


<div style="clear:both;"></div>




</div>
<!--Fin corps page-->




<?php include('inc.footer.php')?>


</body>
</html>

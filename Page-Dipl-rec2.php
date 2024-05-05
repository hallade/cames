<?php
	// on la démarre notre session :)
	session_start ();
	//$_SESSION['ici la variable'] = la valeur;


	




function Affiche_Dipl_Rec($VAR_Pays, $University)
{
echo '<TR>';
echo '<TD class="Title2">  Filière     </TD>';
echo '<TD class="Title2">  Diplôme     </TD>';
echo '<TD class="Title2">  Reconnu le  </TD>';
echo '<TD class="Title2">  Niveau      </TD>';

// on se connecte à notre base
include("Parametres_Base.inc.php");
// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 
// on prépare la requête1 enregistrements
$sql3= "SELECT libspecialite AS Filière, libdiplome AS  'Diplôme', libperiode AS  'Reconnu le', libniveau AS Niveau
FROM specialite, diplome, periode, niveau, institution, pays
WHERE institution.codinstitution = diplome.codinstitution
AND diplome.codniveau = niveau.codniveau
AND diplome.codperiode = periode.codperiode
AND diplome.codspecialite = specialite.codspecialite
AND pays.libpays =  '".$VAR_Pays."'
AND institution.libinstitution =  '".$University."'
AND DATEDIFF( CURDATE( ) , libperiode ) <=182";
/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql3 = $mysqli -> query($sql3) or die('Erreur SQL !<br />'.$sql3.'<br />'.$mysqli -> error);
// on va scanner tous les tuples un par un
while ( ( $Ligne3 = $sql3 -> fetch_array() )  )
{	

$LigneOk3=$Ligne3;
echo '<TR>';
echo '<TD class="Title2">'.$LigneOk3['Filière'].'</TD>';
echo '<TD class="Title2">'.$LigneOk3['Diplôme'].'</TD>';
echo '<TD class="Title2">'.$LigneOk3['Reconnu le'].'</TD>';
echo '<TD class="Title2">'.$LigneOk3['Niveau'].'</TD>';



}
//Refermons La base
$mysqli -> close ();
} 



function Affiche_Universities($VAR_Pays, $Default)
{

} 



$Clic_Envoyer=0;


if ( isset($_POST['ENVOI']) )
   {
	   $Clic_Envoyer=$Clic_Envoyer+1;	   
	  
	   if ($_POST['PAYS']=="none"){  header('Location: Page-Dipl-rec.php'); $Default_Pays="CHOISIR PAYS"; $Clic_Envoyer=$Clic_Envoyer-1;}
	   else 
	   {		   
		   $Code_Du_Pays=$_POST['PAYS'];
           include ('inc.Extract_Pays.php');
		   //on a $Nom_Du_Pays et $Code_Du_Pays
		   $_SESSION['Val_CodePays']= $Code_Du_Pays;
		   $_SESSION['Val_NomPays']= $Nom_Du_Pays;
		   
		   
		   
		   
		   //include ('inc.CODE-Pays.php');
		   //Le pays est arrivé dans notre variable donc on peut continue
		   $Pays_EnCours=$Default_Pays=$Nom_Pays=$Nom_Du_Pays;
		   //$Default_Univ="Université"; 

		   } 
		   
		   
  
	   
	   } 




		  
///////////////////////////////////////////////
/////////////////////////////////////////////




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

<FORM action="Page-Dipl-rec3.php" METHOD="POST" >



<TABLE  border="0" bordercolor="#CCCCCC"  align="center" style="border-collapse:collapse;margin-bottom:10px;" >

<TR>
  <TD class="Title2">  Selectionnez un pays:  </TD>
  <TD>
<select name="PAYS" id="course" style="width:158px;">
  <?php  echo' <option value="'.$_SESSION['Val_CodePays'].'">'.$_SESSION['Val_NomPays'].'</option>' ?>;
</select> 
  </TD>
</TR>


<TR>
  <TD></TD>
  <TD></TD>
</TR>


<TR>
  <TD></TD>
  <TD></TD>
</TR>


<?php 
echo '<TR>';
echo '<TD class="Title2">  Selectionnez une université:  </TD>';
echo '<TD>';
echo '<select name="University" id="course" style="width:158px;">';
echo '<option value="Université">Choisir Université</option>';


// on se connecte à notre base
include("Parametres_Base.inc.php");
// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 
// on prépare la requête1 enregistrements
$sql2= "SELECT codinstitution, libinstitution AS Institution
FROM institution, pays WHERE institution.codpays=pays.codpays and pays.codpays='".$_SESSION['Val_CodePays']."' order by institution asc";
/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql2 = $mysqli -> query($sql2) or die('Erreur SQL !<br />'.$sql2.'<br />'.$mysqli -> error);
// on va scanner tous les tuples un par un
while ( ( $Ligne2 =$sql2 -> fetch_array() )  )
{	

$LigneOk2=$Ligne2;
echo' <option value="'.$LigneOk2['codinstitution'].'">'.$LigneOk2['Institution'].'</option>';
}
//Refermons La base
$mysqli -> close ();

echo '</select>'; 
echo '</TD>';
echo '</TR>';



;?>





<TR  >
  <TD>
  </TD>

  <TD>
    <input type="SUBMIT" value="ENVOVER" class="  Arrondi" style="cursor:pointer;" name ="ENVOI2"/>
    

  </TD>
</TR>



</TABLE>

</FORM>
 
 



 
</div>
<!------------------->
<!--Bloc Left Fin  -->
<!------------------->




<div style="clear:both;"></div>


</div>
<!--Fin 1-->
<!--Partie Rejoignez-nous Debut-->
 


<div style="clear:both;"></div>




</div>
<!--Fin corps page-->






<?php include('inc.footer.php')?>


</body>
</html>


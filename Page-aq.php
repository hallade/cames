<?php
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
<title>Assurance Qualité</title>


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
<div class="LeftBlocEvent" style="float:left;">
<?php include('inc.aq.php');?>
<br/>
<h2 class="TitleEvent"   align="center"  style="color:#cf3a24;"><?php echo $Ligne['Titre']?>  </h2>
 
 
<img src="<?php echo $Ligne['Photo']?>" width=80% height=322px class="ImgCID" style="margin-left:40px;">



<p class="DétailEvent" style="float:left">  <?php echo $Ligne['Détail'];?> </p>


<div style="clear:both;"></div>


<?php include ('inc.aq-PJ.php'); ?>

 
</div>
<!------------------->
<!--Bloc Left Fin  -->
<!------------------->




<!--Bloc Right Debut-->
<div class="RightBlocEvent" style="float:left;" align="center">




<!--Espace Evaluation-Accreditation  Debut-->
<div class="BlocThese Arrondi3 Ombre">
<h2 class="TitleCDIDr" style="text-align:center;background-color:#cf3a24;color:#fff;">Evaluation et Accréditation  </h2>
<ul class="UL_CID" style="text-align:left">
  <?php  include('inc.Lien-PJ-Ev-Acc.php') ?>

</ul>
</div>

<!--Espace  Evaluation-Accreditation Fin-->



<!--Espace referentiel Debut-->
<div class="BlocRevue Arrondi3 Ombre">
<h2 class="TitleCDIDr" style="text-align:center;background-color:#7da03a;color:#fff;margin-bottom:-10px;">Référentiels </h2>
<ul class="UL_CID" style="text-align:left" >
  <?php  include('inc.Lien-PJ-Refer.php') ?>
</ul>


</div>
<!--Espace referentiel Fin-->



<!--Espace Telechargements   Debut-->
<div class="BlocTelech Arrondi3 Ombre">
<h2 class="TitleCDIDr" style="text-align:center;background-color:#7030a0;color:#fff;">Publications  </h2>

</div>
<!--Espace  Telechargements Cames Fin-->
            
</div>
<!--Bloc Right Fin-->

<div style="clear:both;"></div>


</div>
<!--Fin 1-->
<!--Partie Rejoignez-nous Debut-->
 


<div style="clear:both;"></div>




<?php include ('inc.ExctracAgenda.php');?>


<?php
//Ma Fonction pour EXTRAIRE LES JOUR
function ExtractJour($Date)
{
list($JOUR, $MOIS, $ANNEE) = explode("/", $Date);
return $JOUR;
	}
	
//Ma Fonction pour EXTRAIRE LES MOIS
function ExtractMois($Date)
{
list($JOUR, $MOIS, $ANNEE) = explode("/", $Date);
return $MOIS;
	}
	
//Ma Fonction pour EXTRAIRE LES ANNEE
function ExtractAn($Date)
{
list($JOUR, $MOIS, $ANNEE) = explode("/", $Date);
return $ANNEE;
	}		
?>



</div>
<!--Fin corps page-->




<?php include('inc.footer.php')?>


</body>
</html>

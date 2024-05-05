<?php
//on recupere la variable transmise depuis la page de selection du titre en question
$var=$_GET['passage'];


//Code pour l'extraction de  Tableaux d'enregistrements distincts
include ('inc.ElementPrgm.php');



///////////////////////////////////
//Affichage de l'ANNONCE
// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
mysql_query("SET NAMES UTF8"); 




//Refermons La base
mysql_close ($base);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $LigneElmtPrgm['Titre']?></title>


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




<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>





<script type="text/javascript">
 $(document).ready( function(){	
 
		$('#lofslidecontent45').lofJSidernews( {interval:4000,
											   direction:'opacity',
											   duration:1000,
											   easing:'easeInOutSine'} );	
											   											   					
	});

</script>


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


/*Debut Partie esssentielle pour les images*/



		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
		/*Fin Partie esssentielle pour les images*/
	</style>
    




</HEAD>



<BODY>


<!--Debut Partie Haut de la Page TopPageHead-->
<!--TopPageHead-->
<Div class="Arrondi Ombre TopPageHead" >
            
            <img src="images/Design/logo-cames-fd-transparent.png" width=10% style="margin:10px 10px 0px 10px ">

            <!--Debut Menu d'acces rapide -->
            
            <!--Fin Menu d'acces rapide -->
            <div style="clear:both;"></div>
            
            
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

<br/>
<h2 class="TitleEvent"   align="left"  style=""><?php echo $LigneElmtPrgm['Titre'] ?> </h2>
 
<p class="DatePub"> 
  Publié le : <?php echo Transform( $LigneElmtPrgm['Mise en ligne le'] );?>  
  |   
 <span style="padding:1px 8px 1px 8px;background-color:#fabe12;font-size:12px;color:#fff;" class="Arrondi">PROGRAMMES </span>
</p>

<img src="images/<?php echo $LigneElmtPrgm['Photo'];?>" class="ImgEvent"  width=80% height=322px/>
<p class="DétailEvent">  <?php echo $LigneElmtPrgm['Détail'];?> </p>

<?php include ('inc.ElementPrgm-PJ.php');?>

</div>
<!------------------->
<!--Bloc Left Fin  -->
<!------------------->




<!--Bloc Right Debut-->
<div class="RightBlocEvent" style="float:left;" align="center">

<!--Bloc Bleu Debut-->             
<div id="BlocPROGRAMMES" style="" align="center">           
 
<h2 class="TitleBxVert" style="color:#fff;">TOUS LES PROGRAMMES</h2>
<?php include ('inc.ExtractOtherPrgm.php')?>
 



                     
 


<div style="clear:both;"></div>          
</div>             
<!--Bloc Bleu Fin-->    



<img src="images/publicite-Droite.jpg" style="margin-left:0px;margin-top:4px;">

        

</div>
<!--Bloc Right Fin-->
<div style="clear:both;"></div>


</div>
<!--Fin 1-->




<?php
//Ma Fonction pour reorganiser en J/M/ANNEE
function Transform($Date)
{
list($year, $month, $day) = explode("-", $Date);


//On assigne donc le mois equivalent ici

if ($month=='01') {$month="JANVIER";}
if ($month=='02') {$month="FEVRIER";}
if ($month=='03') {$month="MARS";}
if ($month=='04') {$month="AVRIL";}
if ($month=='05') {$month="MAI";}
if ($month=='06') {$month="JUIN";}
if ($month=='07') {$month="JUILLET";}
if ($month=='08') {$month="AOUT";}
if ($month=='09') {$month="SEPTEMBRE";}
if ($month=='10') {$month="OCTOBRE";}
if ($month=='11') {$month="NOVEMBRE";}
if ($month=='12') {$month="DECEMBRE";}


$Date="$day $month $year";	
return $Date;
	}
?>





<!--Partie Rejoignez-nous Debut-->
 
<a href="https://www.facebook.com/lecames" target="_blank" title="le Cames sur Facebook">
<img src="images/social-icons/facebook.png" style="float:left;margin-right:10px;margin-left:10px;margin-top:30px;">
</a>


<a href="https://twitter.com/lecames" target="_blank" title="le Cames sur Twitter">
<img src="images/social-icons/Twitter.png"  style="float:left;margin-right:10px;margin-top:30px;">
</a>

<a href="http://www.youtube.com/user/CommunicationCAMES" target="_blank" title="le Cames sur youtube">
<img src="images/social-icons/youtube.png"  style="float:left;margin-right:10px;margin-top:30px;">
</a>


<!--Partie Rejoignez-nous Fin-->  


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




 <?php 
include ('inc.footer.php');
  ?>

</body>
</html>

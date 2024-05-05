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
	
//Affichage de l'ANNONCE

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 




// Fermeture de la connexion
$mysqli->close();

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bienvenue sur le site du CAMES - Conseil Africain et Malgache pour l’Enseignement Supérieur </title>


<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="style-Cames.css" />
<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" charset="utf-8" />



	<link rel="stylesheet" type="text/css" href="source/jquery.fancybox.css?v=2.0.6" media="screen" />
    <link href='http://fonts.googleapis.com/css?family=Oxygen:400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>



<script type="text/javascript" src="scripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="scripts/main.js"></script>


<!--Le Caroussel en bas-->
	<script type="text/javascript" src="js/jcarousellite_1.0.1.pack.js"></script>
	<script type="text/javascript" src="js/captify.tiny.js"></script>
<!--Fini pour le caroussel-->

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
	<script type="text/javascript">
		$(function() {
    		$(".slider").jCarouselLite({
        		btnNext: ".next",
        		btnPrev: ".prev",
        		visible: 6
    		});
		});

		$(document).ready(function(){
			$('img.captify').captify({
				// all of these options are... optional
				// ---
				// speed of the mouseover effect
				speedOver: 'fast',
				// speed of the mouseout effect
				speedOut: 'fast',
				// how long to delay the hiding of the caption after mouseout (ms)
				hideDelay: 500,	
				// 'fade', 'slide', 'always-on'
				animation: 'slide',		
				// text/html to be placed at the beginning of every caption
				prefix: '',		
				// opacity of the caption on mouse over
				opacity: '0.7',					
				// the name of the CSS class to apply to the caption box
				className: 'caption-bottom',	
				// position of the caption (top or bottom)
				position: 'bottom',
				// caption span % of the image
				spanWidth: '100%'
			});
		});

	</script>
    <!--[if !IE]> <-->
    
<style type="text/CSS">
#UL_Menu_Haut  li ul {
 position:absolute;
 }
</style>
<!--<![endif]-->

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

<?php
//Code pour l'extraction de 3 Tableaux d'enregistrements distincts
//Pour le slide
include ('inc.ExctracSlide.php');
//Preparation des Dimensions Images pour le slide
//Les images a GAUCHE et leurs dimensions 
//fixees pour le HEIGHT=300 pixels
//et le WIDTH=430 pixels
$Dimensions=' height="300" width="430" ';
$DimensionsMini=' height="150" width="100" ';
?>           
            
            
<!--******Debut Menu Horizontal******--> 
<?php include('inc.Mnu_Horiz.php'); ?>
<!--******Fin  Menu Horizontal******-->

</Div>
<!--TopPageHead-->

<!--Fin Partie Haut de la Page TopPageHead-->






<!--Debut corps page-->
<div id="CorpsPage" class="Ombre Arrondi" >

<!--Debut Actualite + Informations-->
<div id="ActuInfoBloc">





<!--Debut partie pour l'actualité-->
<div id="container" >
      
<!------------------------------------- THE CONTENT ------------------------------------------------->
<div id="lofslidecontent45" class="lof-slidecontent" >
<div class="preload"><div></div></div>
 <!-- MAIN CONTENT --> 
  <div class="lof-main-outer" >
  	<ul class="lof-main-wapper">
  		<li>
        		<img src="images/<?php echo $Ligne_1['Photo'] ?>" title="Newsflash 2" <?php echo $Dimensions ?> />           
                 <div class="lof-main-item-desc">
                 <!--Pas de contenu 
                       <h3><a target="_parent" title=" " href="#"></a></h3> <p></p>
                 -->
                 </div>
                
                 
        </li> 
       <li>
        	<img src="images/<?php echo $Ligne_2['Photo'] ?>" title="Newsflash 1" <?php echo $Dimensions ?> />                  
                <div class="lof-main-item-desc">
                 <!--Pas de contenu 
                       <h3><a target="_parent" title=" " href="#"></a></h3> <p></p>
                 -->
                 </div>
        </li> 
       <li>
        	<img src="images/<?php echo $Ligne_3['Photo'] ?>" title="Newsflash 3" <?php echo $Dimensions ?> />   
                <div class="lof-main-item-desc">
                 <!--Pas de contenu 
                       <h3><a target="_parent" title=" " href="#"></a></h3> <p></p>
                 -->
                 </div>
        </li> 

       <li>
        	<img src="images/ActuSlide/publicite.jpg" title="Espace Publicitaire" <?php echo $Dimensions ?> />  
                <div class="lof-main-item-desc">
                 <!--Pas de contenu 
                       <h3><a target="_parent" title=" " href="#"></a></h3> <p></p>
                 -->
                 </div>
        </li> 

      </ul>  	
  </div>
  <!-- END MAIN CONTENT --> 
    <!-- NAVIGATOR -->

  <div class="lof-navigator-outer" >
  		<ul class="lof-navigator" >
            <li>
            	<div>
                    <img src="images/<?php echo $Ligne_1['Vignette'] ?>" <?php echo $DimensionsMini ?> /> 
                    <h3>
                       <a href="<?php echo 'Page-Actu-Sec-Gen.php?passage='.$Ligne_1['ID'] ?>">
					    <?php echo $Ligne_1['Titre'] ?>
                        </a>
                    </h3>
                	 
                	
                  	<span><?php echo Transform($Ligne_1['Mise en ligne le']) ?></span>

                </div>    
            </li>
            
             <li>
             	<div>
                    <img src="images/<?php echo $Ligne_2['Vignette'] ?>" <?php echo $DimensionsMini ?> />
                    <h3>
                     <a href="<?php echo 'Page-Actu-Sec-Gen.php?passage='.$Ligne_2['ID'] ?>">
					   <?php echo $Ligne_2['Titre'] ?>
                     </a>
                    </h3>
                	 
                 	
                  	<span><?php echo Transform($Ligne_2['Mise en ligne le']) ?></span>

                </div>    
            </li>

            <li>
            	<div>
                    <img src="images/<?php echo $Ligne_3['Vignette'] ?>" <?php echo $DimensionsMini ?> />
                    <h3>
                      <a href="<?php echo 'Page-Actu-Sec-Gen.php?passage='.$Ligne_3['ID'] ?>">
					    <?php echo $Ligne_3['Titre'] ?>
                      </a></h3>
                     
                    
                    <span><?php echo Transform($Ligne_3['Mise en ligne le']) ?></span>

                </div>     
            </li>
  
            <li>
           		 <div>
                 	<img src="images/ActuSlide/mini-publicite.jpg" <?php echo $DimensionsMini ?> /> 
                 	<h3> Publicité</h3>
                 	
                     <p>Faites connaitre votre Etablissement scolaire! </p>
                 </div>   
            </li>
    		
        </ul>
  </div>
 </div> 
<script type="text/javascript">

</script>

<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
</div>
<!--Fin partie pour l'actualité-->




<!--Debut partie EVENEMENT-->
<div id="InfoBlocContainer" style="float:right;">
            
<h2 class="TitleBlue"  align="center" style="margin-bottom:0px;">EVENEMENTS</h2>
<?php
//Code pour l'extraction de 2 Tableaux d'enregistrements distincts
include ('inc.ExctracEvents.php');
?>
           
<div style="text-align:center;margin-top:4px;"><a class="Links_Blocs" href="Page-Events-All.php"  >Lire plus d'événements </a ></div>
            
</div>
<!--Fin partie EVENEMENT-->
<div style="clear:both;"></div>


</div>

<!--Fin Actualite + EVENEMENT-->
<?php
//Code pour l'extraction de 2 Tableaux d'enregistrements distincts
include ('inc.ExctracPaysMembres.php');
?>





<!--Debut ACTUALITES+Rejoignez-nous -->
<div  style="float:left;width:41%;height:auto;padding-bottom:10px;margin-left:15px;padding-top:8px;" >

<div class="TitreActuBas" align="center" > ACTUALITES ESPACE CAMES</div>   
<?php
//Code pour l'extraction de 3 Tableaux d'enregistrements distincts
include ('inc.ExctracActualite.php');
?>              

</br>
<div style="text-align:center;margin-top:4px;"><a class="Links_Blocs" href="#"  >Lire plus d'actualités </a ></div>
  



<!--Partie Rejoignez-nous Debut-->
<div class="TitleDoc" 
        style="float:left;height:25px;letter-spacing:1px; 
               padding-top:9px;
               margin-bottom:0px;margin-left:20px;
               margin-top:30px;
               color:#2d5fb2" align="center">
               Rejoignez-nous |
</div>  
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




</div>
<!--Fin ACTUALITES + Rejoignez-nous-->


<?php include ('inc.ExctracAgenda.php');
$OMbre=' <img src="images/web-shadows-header_bg.png" width="100%" style="margin-top:-2px;">';
?>








<!--Debut Agenda du CAMES-->
<!--+++++++++++++++++++++-->
<div  style="float:left;width:56%;height:auto;
             padding-bottom:0px;
             margin-left:6px;margin-top:2px;
             background-color:#fff;">

<!--Exclus de la page d'accueil  -->


<!--Bloc PROGRAMMES DEBUT-->
<div Class="Bloc Arrondi" style="float:left;margin-left:20px;width:48%;padding-bottom:8px;" align="center">
            <div class="TitreProgrmm" align="center" > PROGRAMMES</div> 
            <?php echo $OMbre; ?>
            
            <div class="RectRnd Arrondi ForBtn" style="background-color:#1f67cb;"  align="center">
            <img src="images/interface/programmes-cames.jpg" width=110px  class="ImgRnd Arrondi360">
            </div>
            
            <UL  class="UL_Block" >
               <?php include('inc.TITLES.programmes.php');?>               
            </UL>
            
            
            
          
            
            
</div>
<!--Bloc PROGRAMMES FIN-->

      
  <!--Bloc REPERTOIRE DES DIPLOMES-->
<div Class="Bloc Arrondi" style="float:left;width:46%;margin-left:8px;padding-bottom:8px;" align="center">
            <div class="TitreDiplRec" align="center" > REPERTOIRE DES DIPLOMES</div>
            <?php echo $OMbre; ?>
            
            <div class="RectRnd Arrondi ForBtn" style="background-color:#7030a0;"  align="center">
            <img src="images/interface/diplomes-cames.jpg" width=110px  class="ImgRnd Arrondi360"> 
             </div>
            
             <UL class="UL_Block" >
               <?php include('inc.TITLES.diplrec.php');?>               
            </UL>

</div>
<!--Bloc DIPLOMES RECONNUS FIN--> 


<!--Bloc PAYS MEMBRES DEBUT-->
<div Class="Bloc Arrondi" style="float:left;width:48%; margin-top:8px;margin-left:20px;padding-bottom:8px; " align="center">
            <div class="TitrePaysMmbr" align="center" > PAYS MEMBRES</div> 
            <?php echo $OMbre; ?>
            
            <div class="RectRnd Arrondi ForBtn" style="background-color:#7da03a;"  align="center">
            <img src="images/interface/pays-membres-cames.jpg" width=110px  class="ImgRnd Arrondi360">
            </div> 
            
            
                 
                  
                  <p class="Paragraph5Blocs" align="center">
				     <?php echo  $LignePM['Détail'];?>
                  </p>
                  
             <a class="Links_Blocs" href="Page-pays-membres.php" >Liste des Pays Membres</a >
            
            
</div>
<!--Bloc PAYS MEMBRES FIN-->

      
  <!--Bloc SECR GENERAL DEBUT-->
<div Class="Bloc Arrondi" style="float:left;width:46%; 
                         margin-left:8px;;margin-top:8px;padding-bottom:8px;padding-bottom:8px; " align="center">
            <div class="TitreSECGEN" align="center" > SECRETARIAT GENERAL</div> 
            <?php echo $OMbre; ?>
            
            

            
            
            <div class="RectRnd Arrondi ForBtn" style="background-color:#fabe12;"  align="center">
            <img src="images/interface/secretaire-general-cames.jpg" width=110px  class="ImgRnd Arrondi360"> 
            </div>
            
           <UL class="UL_Block" >
               <?php include('inc.TITLES.secgen.php');?>
                              
            </UL>
            
            

</div>
<!--Bloc SECR GENERAL FIN--> 


   
<div style="clear:both;"></div>    
      
 
<?php 
 //include ('inc.Agenda.bloc.php');
?>     
            
</div>
<!--+++++++++++++++++++++-->
<!--Fin Agenda du CAMES-->




             
<div style="clear:both;"></div>



		<div id="list">
			<div class="prev"><img src="images/prev.png" alt="prev" /></div>
					
				<div class="slider">
					<ul>
						<li>
							<a href="http://www.ambafrance-bf.org" target="_blank" title="FRANCE"><img src="images/logospartners/france.jpg" alt="FRANCE" class="captify" /></a>
						</li>

						<li>
							<a href="http://www.uemoa.int" target="_blank" title="U.E.M.O.A."><img src="images/logospartners/uemoa.jpg" alt="U.E.M.O.A." class="captify" /></a>
						</li>
						<li>
							<a href="http://www.wahooas.org" target="_blank" title="O.O.A.S"><img src="images/logospartners/ooas.jpg" alt="O.O.A.S" class="captify" /></a>
						</li>
						<li>
							<a href="http://www.auf.org" target="_blank" title="A.U.F."><img src="images/logospartners/auf.jpg" alt="A.U.F." class="captify" /></a>
						</li>
						
						<li>
							<a href="http://www.banquemondiale.org/" target="_blank" title="Banque mondiale"><img src="images/logospartners/banque mondiale.jpg" alt="Banque mondiale" class="captify" /></a>
						</li>
						<li>
							<a href="http://fr.unesco.org" target="_blank" title="U.N.E.S.C.O."><img src="images/logospartners/unesco.jpg" alt="U.N.E.S.C.O." class="captify" /></a>
						</li> 

						
						
						<li>
							<a href="http://www.francophonie.org" target="_blank" title="O.I.F."><img src="images/logospartners/oif.jpg" alt="O.I.F." class="captify" /></a>
						</li>
						<li>
							<a href="http://www.who.int" target="_blank" title="O.M.S."><img src="images/logospartners/oms.jpg" alt="O.M.S" class="captify" /></a>
						</li>
						   
                        
						<li>
							<a href="http://www.au.int" target="_blank" title="U.A."><img src="images/logospartners/ua.jpg" alt="U.A." class="captify" /></a>
						</li>   

                        			<li>
							<a href="http://www.aau.org" target="_blank" title="A.A.U."><img src="images/logospartners/aau.jpg" alt="A.A.U." class="captify" /></a>
						</li>
 
 						  <li>
							<a href="https://www.daad.de" target="_blank" title="D.A.A.D."><img src="images/logospartners/daad.jpg" alt="D.A.A.D." class="captify" /></a>
						</li>   
                                               

						                            
					</ul>
				</div>
			<div class="next"><img src="images/next.png" alt="next" /></div>
		</div>
	 



</div>
<!--Fin corps page-->




<?php include('inc.footer.php')?>


</body>
</html>

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

//Le COde pour l'envoi de Mail
function mailSimple($email, $sujet, $message, $destinateur, $emailEnv)
{
  ///////--------------- ENVOI DE MAIL---------- ---------------------------------------////////////
   $headers ="From: ".$destinateur." <".$emailEnv.">\r\n";
         $headers .="Reply-To:".$emailEnv."\r\n";
         $headers .="Content-Type: text/html; charset=iso-8859-1"."\r\n";
   $headers.="MIME-version: 1.0\r\n";
        // $headers .="Content-Transfer-Encoding: 8bit\r\n";
         $subject= $sujet;
         $destinataire=$email;
         $body=$message;
        $envoie= mail($destinataire,$subject,$body,$headers); 
 }



if  (isset($_POST['ENVOYER']))
   { mailSimple('info@lecames.org', $_POST['Sujet'], $_POST['Message'],'LE DESTINATAIRE ICI ', $_POST['EmailExp'] );}




?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contacter le CAMES</title>


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
<div  style="background-color:#fff;width:100%;height:450px;margin-top:10px;padding-top:0px;background-color: #FDFDFD;
             box-shadow: 0px 0px 30px 0px rgba(0, 0, 0, 0.15) inset;">

<h2 class="TitleEvent"   align="center"  style="color:#cf3a24;padding-top:20px;">CONTACTS  </h2>
<!------------------->
<!--Bloc Left Debut-->
<!------------------->
<div class="BlocEventBig2" style="float:left;">
<h2 class="Title2"   align="center"  style="margin-top:50px;">FORMULAIRE DE CONTACT</h2>
<br/><br/>
<FORM action="Page-contacts.php" METHOD="post" >
<TABLE align="center" >
     <TR>
        <TD  class="Title3" style="color:#000" align="right"> Expéditeur :</TD>
        <TD><input type="text" name="EmailExp" placeholder="votremail@votreboite.com" required="required"></TD>        
     </TR>

     <TR>
        <TD  class="Title3" style="color:#000" align="right">   </TD>
        <TD></TD>        
     </TR>
          <TR>
        <TD  class="Title3" style="color:#000" align="right">   </TD>
        <TD></TD>        
     </TR>
     
     
     <TR>
        <TD  class="Title3" style="color:#000" align="right"> Sujet :</TD>
        <TD><input type="text" name="Sujet" maxlength="30" SIZE=30 placeholder="Sujet du mail" required="required"></TD>        
     </TR>

     <TR>
        <TD  class="Title3" style="color:#000" align="right" valign="top"> Message :</TD>
        <TD>
           <TEXTAREA rows="10" cols="32" name="Message" placeholder="Contenu du message"  required="required"></TEXTAREA> 
       </TD>        
     </TR>

     <TR>
        <TD  class="Title3" style="color:#000">  </TD>
        <TD>
           <input type="submit" value="ENVOYER"> 
       </TD>        
     </TR>

   
</TABLE>
</FORM>
<br/>
</div>
<!------------------->
<!--Bloc Left Fin  -->
<!------------------->
<!--Espace These en ligne Debut-->
<div style="float:left;" class="BlocCntacts Arrondi3 Ombre">
<h2 class="TitleCDIDr" style="text-align:center;background-color:#7da03a;color:#fff;"> Coordonnées  </h2>

<ul class="UL_CID" style="font-family:Verdana, Geneva, sans-serif;font-size:13px;">
  <li style="padding-left:20px;">Tél : +(226) 50368146</li>
  <li style="padding-left:20px;">Fax : +(226) 50368573</li>
  <li style="padding-left:20px;">Email : cames@bf.refer.org</li>
  <li style="padding-left:20px;">Site Internet : www.lecames.org </li>
  

</ul>
</div>
<!--Espace These en ligne Fin-->



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

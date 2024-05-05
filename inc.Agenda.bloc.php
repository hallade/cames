
<div class="TitreAgendaBas" align="center" style="margin-top:10px;"> AGENDA MENSUEL</div>  


<?php 

AfficheAgenda($Ligne_Agenda_1);
AfficheAgenda($Ligne_Agenda_2);
AfficheAgenda($Ligne_Agenda_3);


//La fonction pour afficher les events
function AfficheAgenda($Ligne)
         {	 
echo '<div style="width:100%;">';

echo '<!--Debut CalendarBox -->';
echo '<div class="Arrondi3 CalendarBx2 Ombre" style="float:left;">';
echo '                <h2 class="Month" style="" >';
				     
		            $DateFr=Transform($Ligne['Mise en ligne le']);
                    echo ExtractJour($DateFr);

 echo'               </h2>';
 echo'                <h2 class="Date" style="" >';
				    
                    echo ExtractMois($DateFr);

 echo'                </h2> ';               
   echo'              <h2 class="Year" style="" >';
				    
                    echo ExtractAn($DateFr);

  echo'               </h2>';
 echo'</div>';
 echo'<!--Fin CalendarBox -->';

 echo'<!--Debut Content -->';
 echo'<div style="float:left;width:80%;margin-left:10px;background-image:url(images/page-bg-2.png);background-repeat:repeat;border-bottom:solid 1px #ded3da;">';
 echo'<h3 class="TitleAgenda" style="width:100%;">';
 echo'  <a href="#" >';
 echo  'Du &nbsp';
 echo Transform($Ligne['DU']);
 echo '&nbsp; Au &nbsp    ';
  echo Transform($Ligne['AU']);
  echo '<br/>'; 
  echo ' <div style="color:#009">';
  echo $Ligne['Intitulé'];
  echo ' </div>';
  echo ' </a>';
  echo '</h3> ';
  echo '</div>';
  echo '<!--Fin Content -->';



  echo '<div style="clear:both;"></div>';
  echo '</div>	';				 			 
}


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
if ($month=='08') {$month="AOU";}
if ($month=='09') {$month="SEPT";}
if ($month=='10') {$month="OCT";}
if ($month=='11') {$month="NOV";}
if ($month=='12') {$month="DEC";}


$Date="$day/$month/$year";	
return $Date;
	}
?>


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




<div style="clear:both;"> </div>


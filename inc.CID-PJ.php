<?php
//Affichage des infos des Actualites

// on se connecte à notre base
include("Parametres_Base.inc.php");


// on prépare UTF8
$mysqli -> query("SET NAMES UTF8"); 


// on prépare la requête1 enregistrements

$sql= "SELECT information.codinformation as Id,nompiecejointe as Intitulé,libpiecejointe as Téléchargements  FROM piecejointe, information,sousrubrique,rubrique,periode, statut WHERE piecejointe.codinformation=information.codinformation AND information.codsousrubrique=sousrubrique.codsousrubrique AND sousrubrique.codrubrique=rubrique.codrubrique AND information.per_codperiode2=periode.codperiode AND information.codstatut=statut.codstatut AND statut.libstatut='Nouveau' AND rubrique.librubrique='C.I.D.' AND sousrubrique.libsousrubrique='PRESENTATION DU C.I.D.' order by libperiode desc LIMIT 1;
";


/*on lance la requête (mysql_query) et on impose un message d'erreur si la requête ne se passe pas bien (or die)*/
$sql = $mysqli -> query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.$mysqli -> error);



// on va scanner tous les tuples un par un

echo ' <h2 class="TitleBxVert" style="color:#ccc;text-align:left;padding-left:40px;">Téléchargement(s)</h2>';
while ( ( $PieceJ = $sql -> fetch_array() )  )

{	

$Ligne=$PieceJ;
echo '<div style="float:left;margin-left:40px;">
      <a href="'.$Ligne['Téléchargements'].'" target="_blank">
              <img src="images/piece-jointe-icone-8986-128.png" width=30px style="vertical-align:middle">
			  <span>'.$Ligne['Intitulé'].'</span>
	  </a><br/>
	  </div>
	  <div style="clear:both;"> </div>
	  ';

}


//Refermons La base
$mysqli -> close ();
?>

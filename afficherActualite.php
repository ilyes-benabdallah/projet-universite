<?php
include('config/db.php');
include('remplacer.php');
class myClassAfficherActualite
{
	function afficherActualite($id)
	{
	$code="";
	$lienPage='new.php';
	$motRemplacer="[actualite]";

	$requetteActualite = mysql_query("SELECT * FROM actualite WHERE id_actualite='$id'")or die(mysql_error());
	

		$getActualite= mysql_fetch_array($requetteActualite);
		
		
		$titreActualite = $getActualite['titre_actualite'];
		$contenuActualite = $getActualite['contenu_actualite'];
		$dateActualite = $getActualite['date_actualite'];

		$titreActualite = mysql_real_escape_string($titreActualite);
		$contenuActualite = mysql_real_escape_string($contenuActualite);
		$dateActualite = mysql_real_escape_string($dateActualite);
		
		$code=$code."<strong>".$titreActualite."</strong><br><span>".$dateActualite.".</span><br><p><span>".$contenuActualite.".</span></p></div></li><br>";
		
		
	
				
					$objetRemplacer = new myClassRemplacer();
					
					$objetRemplacer->remplacerHtml($motRemplacer,$code,$lienPage);
	}
}

// $objectAfficherActualite= new myClassAfficherActualite();
// $objectAfficherActualite->afficherActualite();

?>
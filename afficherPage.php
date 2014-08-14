<?php
//include('config/db.php');
include('remplacer.php');
class myClassAfficherPage
{
	function afficherPage($id)
	{
	$code="";
	$lienPage='new.php';
	$motRemplacer="[page]";

	$requetePage = mysql_query("SELECT * FROM page WHERE id_page='$id'")or die(mysql_error());
	

		$getPage= mysql_fetch_assoc($requetePage);
		
		
		$titrePage = $getPage['titre_page'];
		$contenuPage = $getPage['contenu_page'];
		$datePage = $getPage['date_page'];
		

		$titrePage = mysql_real_escape_string($titrePage);
		$contenuPage = mysql_real_escape_string($contenuPage);
		$datePage = mysql_real_escape_string($datePage);
		
		$code=$code."<strong>".$titrePage."</strong><br><span>".$datePage.".</span><br><p><span>".$contenuPage.".</span></p></div></li><br>";
		
		
		
		$objetRemplacer = new myClassRemplacer();
	    $objetRemplacer->remplacerHtml($motRemplacer,$code,$lienPage);		
					
	}
	
}
 // include('config/db.php');
 // $objectAfficherBandeau= new myClassAfficherPage();
 // $objectAfficherBandeau->afficherPage();

?>
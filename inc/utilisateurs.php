<?php 

Class myClassUtilisateur
{
	function ajouterUtilisateur($pseudoUtilisateur,$nomUtilisateur,$prenomUtilisateur,$DateNaissanceUtilisateur,$emailUtilisateur,$passUtilisateur,$confirmeUtilisateur)
	{
	$objectErreur = new myClassErreur();
		
		if(empty ($pseudoUtilisateur) or empty ($nomUtilisateur) or empty ($prenomUtilisateur) or empty ($DateNaissanceUtilisateur) or empty ($emailUtilisateur)or empty ($passUtilisateur) or empty ($confirmeUtilisateur))
		{
		$objectErreur->initialiserErreur("Il faut remplir tout les champs." , 0);
		}
		elseif ($passUtilisateur != $confirmeUtilisateur) $objectErreur->initialiserErreur("Mots de passe incompatible." , 0);
		else
		{
		$pseudoUtilisateur = mysql_real_escape_string($pseudoUtilisateur);
		$nomUtilisateur = mysql_real_escape_string($nomUtilisateur);
		$prenomUtilisateur = mysql_real_escape_string($prenomUtilisateur);
		$DateNaissanceUtilisateur = mysql_real_escape_string($DateNaissanceUtilisateur);
		$emailUtilisateur= mysql_real_escape_string($emailUtilisateur);
		$passUtilisateur =md5(mysql_real_escape_string($passUtilisateur));
		
		$verifierPseudo= mysql_query("SELECT * FROM utilisateur WHERE pseudo_utilisateur ='$pseudoUtilisateur' or email_utilisateur='$emailUtilisateur'") or die(mysql_error()); 
		$pseudoExist = mysql_num_rows($verifierPseudo);
			if ($pseudoExist != 0) $objectErreur-> initialiserErreur("pseudo ou mail déja existant" , 0);
			else
			{
				$insertUtilisateur= mysql_query("INSERT INTO utilisateur (pseudo_utilisateur,nom_utilisateur,prenom_utilisateur,date_naissance_utilisateur,email_utilisateur,password_utilisateur) VALUE ('$pseudoUtilisateur','$nomUtilisateur','$prenomUtilisateur','$DateNaissanceUtilisateur','$emailUtilisateur','$passUtilisateur')") or die(mysql_error());
				if($insertUtilisateur) $objectErreur->initialiserErreur("Enregistrement avec succée." , 1);
				else $objectErreur->initialiserErreur("Erreur durant l'enregistrememt." , 0);
			}
		}
	}
	
	function accepterUtilisateur($id)
	{
	$objectErreur = new myClassErreur();
	$requeteUpdate= mysql_query("UPDATE utilisateur SET statut_utilisateur='1' WHERE id_utilisateur='$id'") or die (mysql_error());
	if($requeteUpdate) header("location:AccepterUtilisateur.php");
	else $objectErreur->initialiserErreur("Acceptation interrompu." , 0);
	
	} 
	
	function refuserUtilisateur($id)
	{
	$objectErreur = new myClassErreur();
    $requeteDelete = mysql_query("DELETE FROM utilisateur WHERE id_utilisateur='$id'") or die (mysql_error());
	if($requeteDelete) header("location:AccepterUtilisateur.php");
	else $objectErreur->initialiserErreur("Acceptation interrompu." , 0);
	
	} 
	
	function supprimerUtilisateur($id)
	{
	$objectErreur = new myClassErreur();
    $requeteDelete = mysql_query("DELETE FROM utilisateur WHERE id_utilisateur='$id'") or die (mysql_error());
	if($requeteDelete) header("location:AfficherUtilisateur.php");
	else $objectErreur->initialiserErreur("Acceptation interrompu." , 0);
	
	} 
}
?>
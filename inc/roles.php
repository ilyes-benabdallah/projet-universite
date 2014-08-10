<?php 



class myClassRole 
{
	
	function roleAccess () 
	{
		global $supplementRequete;
		
		$myActionAccess = mysql_real_escape_string(ucfirst(pathinfo($_SERVER['PHP_SELF'], PATHINFO_FILENAME)));
		
		$myRoleAccess = $_SESSION["TYPE_ADMIN_ACC_VAL"];
		
		if ($myRoleAccess == "auteur")
		$supplementRequete = " AND auteur_id_actualite=".$_SESSION["ID_ADMIN_ACC_VAL"];
		else $supplementRequete = "";
		
		
		
		$getRole = mysql_query("SELECT * FROM role WHERE type_admin_role = '$myRoleAccess' AND (action_role = '$myActionAccess' OR action_role = 'ALL')") or die(mysql_error());
		
		
		
		$verifierRole = mysql_num_rows($getRole);
		if ($verifierRole == 0)
		{
			$objectErreur = new myClassErreur();
			$objectErreur->initialiserErreur("Vous n'avez pas le droit d'accéder a cette action." , 0);
			exit;
		}

	}
	
	function myPostsDisplay ()
	{
		
		$myRoleAccess = $_SESSION["TYPE_ADMIN_ACC_VAL"];
		if ($myRoleAccess == "auteur")
		return " AND auteur_id_actualite=".$_SESSION["ID_ADMIN_ACC_VAL"];
		else return "";
	}
}
 ?>
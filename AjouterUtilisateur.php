<?php  
include('/config/db.php');
include('/inc/erreurs.php');

include('/inc/utilisateurs.php');

if (isset($_POST['submit']))
{
$pseudoUtilisateur = $_POST['pseudoUtilisateur'];
$nomUtilisateur = $_POST['nomUtilisateur'];
$prenomUtilisateur= $_POST['prenomUtilisateur'];
$DateNaissanceUtilisateur =$_POST['DateNaissanceUtilisateur'];
$emailUtilisateur =$_POST['emailUtilisateur'];
$passUtilisateur = $_POST['passUtilisateur'];
$confirmeUtilisateur =$_POST['confirmeUtilisateur'];

$objectUtilisateur = new myClassUtilisateur();
$objectUtilisateur->ajouterUtilisateur($pseudoUtilisateur,$nomUtilisateur,$prenomUtilisateur,$DateNaissanceUtilisateur,$emailUtilisateur,$passUtilisateur,$confirmeUtilisateur);
}
?>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
body { margin: auto; width: 960px;} 
</style>

</head>
<body>		
<div >
		<h3>Inscription<small> Veuillez remplir le formulaire d'inscription</small></h3>
		
		<br>
		<form action="AjouterUtilisateur.php" method="POST" >
		<div class="form-group">
			<label for="exampleInputEmail1">Pseudo</label>
			<input type="text" class="form-control" value='<?php if (isset($_POST['pseudoUtilisateur'])) echo $_POST['pseudoUtilisateur'] ;?>' name="pseudoUtilisateur" placeholder="Saisir le pseudonyme">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Nom</label>
			<input type="text" class="form-control" name="nomUtilisateur" value='<?php if (isset($_POST['nomUtilisateur'])) echo $_POST['nomUtilisateur'] ;?>' placeholder="Saisir le nom">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Prénom</label>
			<input type="text" class="form-control" name="prenomUtilisateur" value='<?php if (isset($_POST['prenomUtilisateur'])) echo $_POST['prenomUtilisateur'] ;?>' placeholder="Saisir le prénom">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Date de naissance</label>
			<input type="date" class="form-control" name="DateNaissanceUtilisateur" value='<?php if (isset($_POST['DateNaissanceUtilisateur'])) echo $_POST['DateNaissanceUtilisateur'] ;?>' placeholder="Saisir la date de naissace">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Email</label>
			<input type="email" class="form-control" name="emailUtilisateur" value='<?php if (isset($_POST['emailUtilisateur'])) echo $_POST['emailUtilisateur'] ;?>' placeholder="Saisir l'Email">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Mot de passe</label>
			<input type="password" class="form-control" name="passUtilisateur" value='<?php if (isset($_POST['passUtilisateur'])) echo $_POST['passUtilisateur'] ;?>' placeholder="Saisir le mot de passe">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Confirmation</label>
			<input type="password" class="form-control"  name="confirmeUtilisateur" value='<?php if (isset($_POST['confirmeUtilisateur'])) echo $_POST['confirmeUtilisateur'] ;?>' placeholder="Confirmer le mot de passe">
		</div>
		
		
		<br>
		<button type="submit" name="submit" class="btn btn-primary btn-block" >S'inscrir</button>
		
		</form>
		
		
</div> 
</body> 
</html>
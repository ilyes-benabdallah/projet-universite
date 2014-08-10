


		
<div class="text-left" href="#page">
		<h3>Inscription<small> Veuillez remplir le formulaire d'inscription</small></h3>
		
		<br>
		<form action="AjouterAdmins.php#admin" method="POST" >
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
			<label for="exampleInputEmail1">Email</label>
			<input type="email" class="form-control" name="emailUtilisateur" value='<?php if (isset($_POST['emailUtilisateur'])) echo $_POST['emailUtilisateur'] ;?>' placeholder="Saisir l'Email">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Mot de passe</label>
			<input type="password" class="form-control" name="passUtilisateur" value='<?php if (isset($_POST['passUtilisateur'])) echo $_POST['passUtilisateur'] ;?>' placeholder="Saisir le mot de passe">
		</div>
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">Confirmation</label>
			<input type="password" class="form-control"  name="confirmeAdmin" value='<?php if (isset($_POST['confirmeUtilisateur'])) echo $_POST['confirmeUtilisateur'] ;?>' placeholder="Confirmer le mot de passe">
		</div>
		
		
		<br>
		<button type="submit" name="submit" class="btn btn-primary btn-block" >S'inscrir</button>
		
		</form>
		
		
</div> 
   

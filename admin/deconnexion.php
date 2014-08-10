<?php 
session_start();
if (isset ($_SESSION["ID_ADMIN_ACC_VAL"])) unset($_SESSION["ID_ADMIN_ACC_VAL"]);
if (isset ($_SESSION["PSEUDO_ADMIN_ACC_VAL"])) unset($_SESSION["PSEUDO_ADMIN_ACC_VAL"]);
if (isset ($_SESSION["MAIL_ADMIN_ACC_VAL"])) unset($_SESSION["MAIL_ADMIN_ACC_VAL"]);
if (isset ($_SESSION["NOM_ADMIN_ACC_VAL"])) unset($_SESSION["NOM_ADMIN_ACC_VAL"]);
if (isset ($_SESSION["PRENOM_ADMIN_ACC_VAL"])) unset($_SESSION["PRENOM_ADMIN_ACC_VAL"]);
if (isset ($_SESSION["TYPE_ADMIN_ACC_VAL"])) unset($_SESSION["TYPE_ADMIN_ACC_VAL"]);
header("location: index.php");
exit;
?>
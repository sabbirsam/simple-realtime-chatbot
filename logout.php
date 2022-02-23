<?php
include("configuration.php");
session_start();
if(isset($_SESSION['email']))
{
	mysqli_query($al,"UPDATE users SET status = 0 WHERE email = '".$_SESSION['email']."'");
}
unset($_SESSION['email']);
unset($_SESSION['id']);
session_destroy();
header("location:index.php");
?>
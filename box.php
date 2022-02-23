<?php
include("configuration.php");
session_start();
if(!isset($_SESSION['email']))
{
	header("location:index.php");
}
if(!empty($_POST))
{
	$msg = $_POST['msg'];
	$email = $_SESSION['email'];
	$sql = mysqli_query($al,"SELECT * FROM users WHERE email='$email'");
	$b= mysqli_fetch_array($sql);
	$name = $b['nick'];
	$date = date('d-M-Y');
	$time = date('h:i a');

    // print_r($name); 

	mysqli_query($al,"INSERT INTO box(sender,email,msg,time,date) VALUES('$name','$email','$msg','$time','$date')");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chat Room</title>
<link href="scripts/styleSheet.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/jquery-3.1.1.min.js"></script>
<script>
function ajaxCall() {
    $.ajax({
        url: "boxScript.php", 
        success: (function (result) {

			// console.log(result);

            $("#vegan").html(result);
        })
    })
};
ajaxCall(); // To output when the page loads
setInterval(ajaxCall, (1 * 1000)); // x * 1000 to get it in seconds

</script>
</head>
<body>
<span class="heading">Chat Room</span><span style="float:right"><a href="logout.php">
<img src="images/logout.png" height="50" width="100"  /></a></span>

<br />
<div align="center">
<form method="post" action="" id="myForm">
<table class="table" cellpadding="4" cellspacing="4">
<tr><td align="center" class="tableHead" colspan="2">CHAT BOX</td></tr>
<tr><td colspan="2"><div class="fields2" style="overflow:scroll;height:300px;word-wrap:normal;width:500px;" id="vegan">
</div></td></tr>
<tr><td><input name="msg" id="msg" class="fields" type="text" placeholder="Enter Your Message" required="required" style="height:50px;" size="60" /></td>
<td><input type="submit" value="SEND" class="commandButton" style="height:54px;" /></td></tr>
</table>
</form><br />
<br />
<!-- <a href="logout.php">BACK</a> -->
</div>
</body>

</html>
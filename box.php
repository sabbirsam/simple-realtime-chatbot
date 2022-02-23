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
<!-- <link href="scripts/styleSheet.css" rel="stylesheet" type="text/css" /> -->

<link href="scripts/chat.css" rel="stylesheet" type="text/css" />
<!-- <link href="scripts/bootstrap-material-design.css" rel="stylesheet" type="text/css" /> -->

<script type="text/javascript" src="scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="scripts/chat.js"></script>
<script type="text/javascript" src="scripts/bootstrap.min.js"></script>

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

<!-- start  -->

  
<div id="chat-circle" class="btn btn-raised">
        <div id="chat-overlay"></div>
		    <!-- <i class="material-icons">speaker_phone</i> -->
		    <i class="material-icons">▶Snap</i>
	</div>
  
  <div class="chat-box" id="sam">
        <span class="heading"></span><span style="float:right">
            <a href="logout.php"><img src="images/logout.png" height="50" width="100"  /></a>
        </span>

        <div class="chat-box-header">
        <span class="chat-box-toggle"><i class="material-icons">close</i></span>
        </div>

        
        <!-- <form method="post" action="" id="myForm"><form method="post" action="" id="myForm"> -->
            <div class="chat-box-body" id="vegan">
            <div class="chat-box-overlay">   
            </div>
            <div class="chat-logs">
            
            </div><!--chat-log -->
            </div>
        <form method="post" action="" id="myForm"><form method="post" action="" id="myForm">
            <div class="chat-input">      
            
                <!-- <input type="text" id="chat-input" placeholder="Send a message..."/> -->
                <input name="msg" id="msg" class="fields" type="text" placeholder="Enter Your Message" required="required" style="height:50px;" size="60" />
                <input type="submit" value="▶" class="commandButton chat-submit" style="height:54px;" />
        </form>      
    </div>
  </div>
  
  
  
  
</div>
<!-- end  -->
    <script>
        window.onload=function() {
            document.getElementById("sam").style.display = 'block';
        };
    </script>
 


</body>

</html>
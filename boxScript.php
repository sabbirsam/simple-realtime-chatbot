<?php 
include("configuration.php");
$fetch=mysqli_query($al,"SELECT * FROM box ORDER BY id DESC");
while($f=mysqli_fetch_array($fetch))
{
	$userData = mysqli_fetch_array(mysqli_query($al,"SELECT * FROM users WHERE email = '".$f['email']."'"));
	// print_r($userData ); 
	?>
<span class="nick" style="color:<?php echo $userData['color'];?>"><?php echo $f['sender'];?></span>: <span class="msg"><?php echo $f['msg']."<br>";?> <span style="font-size:10px;color:rgba(89,255,0,1.00);"><?php echo $f['time']." | ". $f['date']."<br>";?></span></span><br /><?php } ?>

<?php
	include_once 'dbconn.php';
	
	$admid = $_POST['admin_id'];
	$admlastn = $_POST['admin_lastname'];
	$admfirstn = $_POST['admin_firstname'];
	$admemail = $_POST['admin_email'];
	$admphone = $_POST['admin_phone'];
	
	$sql = "INSERT INTO admin
			(admin_id, admin_lastname, admin_firstname, admin_email, admin_phone)
			VALUES ('$admid', '$admlastn', '$admfirstn', '$admemail', '$admphone');";
	mysqli_query($conn, $sql);
	
	header("Location: ../adminMainMenu.php?adminSignup=success");
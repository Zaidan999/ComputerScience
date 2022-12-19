<?php
	include_once 'dbconn.php';
	
	$dnrid = $_POST['donor_id'];
	$lastn = $_POST['donor_lastname'];
	$firstn = $_POST['donor_firstname'];
	$email = $_POST['donor_email'];
	$phone = $_POST['donor_phone'];
	
	$sql = "INSERT INTO donor
			(donor_id, donor_lastname, donor_firstname, donor_email, donor_phone)
			VALUES ('$dnrid', '$lastn', '$firstn', '$email', '$phone');";
	mysqli_query($conn, $sql);
	
	header("Location: ../donorMainMenu.php?donorSignup=success");
<?php
	include_once 'dbconn.php';
	
	$paycode = $_POST['pay_code'];
	$dcode = $_POST['donation_code'];
	$paymethod = $_POST['pay_method'];
	$paytotal = $_POST['pay_total'];
	
	$sql = "INSERT INTO payment
			(pay_code, donation_code, pay_method, pay_total)
			VALUES ('$paycode', '$dcode', '$paymethod', '$paytotal');";
	mysqli_query($conn, $sql);
	
	header("Location: ../donorMainMenu.php?payment=success");
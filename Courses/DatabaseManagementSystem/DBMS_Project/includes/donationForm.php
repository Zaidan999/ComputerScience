<?php
	include_once 'dbconn.php';
	
	$dcode = $_POST['donation_code'];
	$ddate = $_POST['donation_date'];
	$dtime = $_POST['donation_time'];
	$damount = $_POST['donation_amount'];
	$dnrid = $_POST['donor_id'];
	
	$sql = "INSERT INTO donation
			(donation_code, donation_date, donation_time, donation_amount, donor_id)
			VALUES ('$dcode', '$ddate', '$dtime', '$damount', '$dnrid');";
	mysqli_query($conn, $sql);
	
	header("Location: ../payment.php?donationForm=success");
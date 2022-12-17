<?php
	include_once 'dbconn.php';
	
	$id = $_POST['STUDENT_ID'];
	$first = $_POST['FIRSTNAME'];
	$last = $_POST['LASTNAME'];
	$gender = $_POST['GENDER'];
	$address = $_POST['ADDRESS'];
	$phone = $_POST['PHONE'];
	$bod = $_POST['BIRTHDATE'];
	
	$sql = "INSERT INTO students
			(STUDENT_ID, FIRSTNAME, LASTNAME, GENDER, ADDRESS, PHONE, BIRTHDATE)
			VALUES
			('$id', '$first', '$last', '$gender', '$address', '$phone', '$bod');";
	$result = mysqli_query($conn, $sql);
	mysqli_query($conn, $sql);
	
	header("Location: ../insert.php?signup=success");
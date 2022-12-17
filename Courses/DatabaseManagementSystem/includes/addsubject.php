<?php
	include_once 'dbconn.php';
	
	$s_id = $_POST['SUBJECT_ID'];
	$name = $_POST['SUBJECT_NAME'];
	$teacher = $_POST['TEACHER'];
	
	$sql = "INSERT INTO subjects
			(SUBJECT_ID, SUBJECT_NAME, TEACHER)
			VALUES
			('$s_id', '$name', '$teacher');";
	$result = mysqli_query($conn, $sql);
	mysqli_query($conn, $sql);
	
	header("Location: ../insertsubject.php?addsubject=success");
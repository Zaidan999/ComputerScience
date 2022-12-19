<?php
	include_once 'includes/dbconn.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>DBMS PROJECT</title>
</head>
<body>
<?php
	$sql = "SELECT * FROM  donation;";
	$result = mysqli_query($conn, $sql);
	$resultCheck = mysqli_num_rows($result);

	if ($resultCheck > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			echo $row['donation_code']." | ".$row['donation_date']." | ".$row['donation_amount']."<br>";
		}
	}

?>

</body>
</html>
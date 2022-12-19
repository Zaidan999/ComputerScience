<?php
include_once 'dbconn.php';
?>

<html>
<head>
	<title>Monthly Report</title>
</head>
<body>

<?php
	$datemin = $_GET['date_min'];
	$datemax = $_GET['date_max'];
	
	$sql = "SELECT *
			FROM donation
			WHERE donation_date BETWEEN '$datemin' AND '$datemax';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			echo $row['donation_code']." | ".$row['donation_date']." | ".$row['donation_amount'].
			"<br>";
		}
	} else {
		echo "0 results";
	}
	
	$result = mysqli_query($conn, "SELECT SUM(donation_amount) AS donation_sum
								   FROM donation
								   WHERE donation_date BETWEEN '$datemin' AND '$datemax';");
	$row = mysqli_fetch_assoc($result); 
	$sum = $row['donation_sum'];
	echo "<br>"."Donation Total: ".$sum;
?>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminMainMenu.php';">Back to Main Menu</button>
</body>
</html>
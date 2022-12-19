<?php
include_once 'includes/dbconn.php';
?>

<html>
<head>
	<title>DBMS PROJECT</title>
</head>
<body>

<?php
	$dnrid = $_GET['donor_id'];
	
	$sql = "SELECT *
			FROM donation
			WHERE donor_id LIKE '$dnrid';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			echo $row['donor_id']." | ".$row['donation_code']." | ".$row['donation_date']." | ".$row['donation_amount']."<br>";
		}
	} else {
		echo "0 results";
	}
?>

</body>
</html>
<?php
include_once 'dbconn.php';
?>

<html>
<head>
	<title>Receipt</title>
</head>
<body>
<p1>RECEIPT</P1>
<br>
<br>
<?php
	$paycode = $_GET['pay_code'];
	
	$sql = "SELECT *
			FROM payment
			WHERE pay_code LIKE '$paycode';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			echo "Payment ID: ".$row['pay_code']."<br>".
				"Payment Method: ".$row['pay_method']."<br>";
		}
	} else {
		echo "Error payment code!";
	}
?>

<?php
	$dnrid = $_GET['donor_id'];
	
	$sql = "SELECT *
			FROM donor
			WHERE donor_id LIKE '$dnrid';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			echo "Last Name: ".$row['donor_lastname']."<br>".
				"First Name: ".$row['donor_firstname']."<br>";
		}
	} else {
		echo "Error  donor ID!";
	}
?>

<?php
	$dcode = $_GET['donation_code'];
	
	$sql = "SELECT *
			FROM donation
			WHERE donation_code LIKE '$dcode';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			echo "Donation Date: ".$row['donation_date']."<br>".
				"Donation Amount: ".$row['donation_amount']."<br>";
		}
	} else {
		echo "Error donation code!";
	}
?>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/donorMainMenu.php';">Back to Main Menu</button>

</body>
</html>
<?php
include_once 'dbconn.php';
?>

<html>
<head>
	<title>Delete Account</title>
</head>
<body>

<?php
	$dnrid = $_GET['donor_id'];
	
	$sql = "DELETE 
			FROM donor
			WHERE donor_id LIKE '$dnrid';";
	
	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
?>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminMainMenu.php';">Back to Main Menu</button>
</body>
</html>
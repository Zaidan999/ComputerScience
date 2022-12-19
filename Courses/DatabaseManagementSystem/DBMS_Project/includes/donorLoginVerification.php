<?php
include_once 'dbconn.php';
?>

<html>
<head>
	<title>Login</title>
</head>
<body>

<?php
	$dnremail = $_GET['donor_email'];
	
	$sql = "SELECT *
			FROM donor
			WHERE donor_email LIKE '$dnremail';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			header("Location: ../donorMainMenu.php?donorLogin=success");
		}
	} else {
		echo "Wrong Email!";
	}
?>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/donorRegistration.php';">Back</button>
</body>
</html>
<?php
include_once 'dbconn.php';
?>

<html>
<head>
	<title>Login</title>
</head>
<body>

<?php
	$admemail = $_GET['admin_email'];
	
	$sql = "SELECT *
			FROM admin
			WHERE admin_email LIKE '$admemail';";
	$result = $conn->query($sql);
	
	if ($result->num_rows>0) {
		while ($row = $result->fetch_assoc()) {
			header("Location: ../adminMainMenu.php?adminLogin=success");
		}
	} else {
		echo "Wrong Email!";
	}
?>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminRegistration.php';">Back</button>
</body>
</html>
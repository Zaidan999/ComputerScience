<!DOCTYPE html>
<html>
<head>
	<title>View Donor Profile</title>
</head>
<body>

<form action ="includes/donorProfile.php" method="GET">
	<input type="int" name="donor_id" placeholder="Donor ID">
	<br>
	<button type="submit" name="submit">View</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminMainMenu.php';">Back to Main Menu</button>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
	<title>Delete Donor Account</title>
</head>
<body>
Please insert the donor's ID again for verification purpose <br><br>
<form action ="includes/donorDeleteVerification.php" method="GET">
	<input type="varchar" name="donor_id" placeholder="Donor ID">
	<br>
	<button type="submit" name="submit">Delete Account</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/donorProfile.php';">Back</button>
</body>
</html>
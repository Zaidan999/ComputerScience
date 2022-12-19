<!DOCTYPE html>
<html>
<head>
	<title>Edit Donor Info</title>
</head>
<body>

<form action ="includes/editDonorInfo.php" method="GET">
	<input type="int" name="donor_id" placeholder="Donor ID">
	<br>
	<input type="varchar" name="donor_lastname" placeholder="Last Name">
	<br>
	<input type="varchar" name="donor_firstname" placeholder="First Name">
	<br>
	<input type="varchar" name="donor_email" placeholder="Email">
	<br>
	<input type="varchar" name="donor_phone" placeholder="Phone">
	<br>
	<button type="submit" name="submit">Edit Data</button>
</form>
<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/includes/donorProfile.php';">Back</button>
</body>
</html>
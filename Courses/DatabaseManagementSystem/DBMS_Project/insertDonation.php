<!DOCTYPE html>
<html>
<head>
	<title>Donation Form</title>
</head>
<body>

<form action ="includes/donationForm.php" method="POST">
	<input type="int" name="donation_code" placeholder="Donation Code">
	<br>
	<input type="date" name="donation_date" placeholder="Date">
	<br>
	<input type="time" name="donation_time" placeholder="Time">
	<br>
	<input type="decimal" name="donation_amount" placeholder="Donation Amount">
	<br>
	<input type="int" name="donor_id" placeholder="Donor ID">
	<br>
	<button type="submit" name="submit">Donate</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/donorMainMenu.php';">Back to Main Menu</button>
</body>
</html>
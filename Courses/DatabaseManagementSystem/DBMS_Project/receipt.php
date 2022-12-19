<!DOCTYPE html>
<html>
<head>
	<title>Print Receipt</title>
</head>
<body>

<form action ="includes/printReceipt.php" method="GET">
	<input type="int" name="donor_id" placeholder="Donor ID">
	<br>
	<input type="int" name="donation_code" placeholder="Donation Code">
	<br>
	<input type="int" name="pay_code" placeholder="Payment Code">
	<br>
	<button type="submit" name="submit">Print</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/donorMainMenu.php';">Back to Main Menu</button>
</body>
</html>
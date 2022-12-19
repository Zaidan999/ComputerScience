<!DOCTYPE html>
<html>
<head>
	<title>Monthly Report</title>
</head>
<body>

<form action ="includes/generateMonthlyReport.php" method="GET">
	<input type="date" name="date_min" placeholder="Date">
	<br>
	<input type="date" name="date_max" placeholder="Date">
	<br>
	<button type="submit" name="submit">Generate</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminMainMenu.php';">Back to Main Menu</button>
</body>
</html>
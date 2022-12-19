<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>

<form action ="includes/adminLoginVerification.php" method="GET">
	<input type="varchar" name="admin_email" placeholder="Email">
	<br>
	<button type="submit" name="submit">Login</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminRegistration.php';">Back</button>
</body>
</html>
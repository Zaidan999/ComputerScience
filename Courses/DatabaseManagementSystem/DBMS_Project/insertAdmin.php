<!DOCTYPE html>
<html>
<head>
	<title>Admin Signup</title>
</head>
<body>

<form action ="includes/adminSignup.php" method="POST">
	<input type="int" name="admin_id" placeholder="Admin ID">
	<br>
	<input type="varchar" name="admin_lastname" placeholder="Last Name">
	<br>
	<input type="varchar" name="admin_firstname" placeholder="First Name">
	<br>
	<input type="varchar" name="admin_email" placeholder="Email">
	<br>
	<input type="varchar" name="admin_phone" placeholder="Phone">
	<br>
	<button type="submit" name="submit">Sign up</button>
</form>

<br>
<br>
<button onclick="window.location.href='http://localhost/DBMS_project/adminRegistration.php';">Back</button>
</body>
</html>
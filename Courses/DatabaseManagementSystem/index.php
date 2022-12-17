<?php
	include_once 'includes/dbconn.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Session DBMS</title>
	<h2>When the moon slowly disappear, its beauty always remains in my heart</h2>
</head>
<body>

<?php
	$sql = "SELECT * FROM students;";
	$result = mysqli_query($conn, $sql);
	$resultCheck = mysqli_num_rows($result);

	if ($resultCheck > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			echo $row['FIRSTNAME'] . "<br>";
		}
	}

?>

</body>
</html>
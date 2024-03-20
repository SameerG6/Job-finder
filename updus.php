<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Details</title>
    <link rel="stylesheet" href="index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anta&family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="top">
        <p class="heading">Job Finder</p>
    </div>
    <div class="navbar">
        <a href="ulogged.php" class="ah" style="margin-left:250px;">HOME</a>
        <a href="uabt.php" class="ah">ABOUT US</a>
        <a href="upage.php" class="ah">PROFILE</a>
        <a href="logout.php" class="ah">LOG OUT</a>
    </div>
    <div class="side">
        <a href="curus.php" class="b">My Details</a>
        <br>
        <a href="updus.php" class="b">Update My Details</a>
        <br>
        <a href="uapjb.php" class="b">My applied jobs</a>
        <br>
    </div>
    <div class="regform">
        <center>
            <h1>My Details</h1>
        </center>
        <?php
        session_start();
        if (isset($_SESSION['uid'])) {
            $uid = $_SESSION['uid'];
            $db_user = "root";
            $db_password = "";
            $db_name = "addemps";

            $conn = new mysqli("localhost", $db_user, $db_password, $db_name);
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM udet WHERE uid = '$uid'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                echo "<form action='editus.php' method='POST'style='margin-top:30px;'>";
                echo "<center>";
                echo "<table style='border:none;'>";
                echo "<tr><th>User ID</th><td>" . $row['uid'] . "</td></tr>";
                echo "<tr><th>User Name</th><td><input type='text' name='uname' value='" . $row['uname'] . "'></td></tr>";
                echo "<tr><th>Email</th><td><input type='text' name='email' value='" . $row['email'] . "'></td></tr>";
                echo "<tr><th>Qualification</th><td><input type='text' name='qua' value='" . $row['qua'] . "'></td></tr>";
                echo "<tr><th>Years of experience</th><td><input type='text' name='exp' value='" . $row['exp'] . "'></td></tr>";
                echo "<tr><th>Field</th><td><input type='text' name='field' value='" . $row['field'] . "'></td></tr>";
                echo "<tr><th>Gender</th><td>" . $row['gender'] . "</td></tr>";
                echo "<tr><th>Date of birth</th><td><input type='date' name='dob' value='" . $row['dob'] . "'></td></tr>";
                echo "<tr><th>Age</th><td><input type='number' name='age' value='" . $row['age'] . "'></td></tr>";
                echo "<tr><th>Address</th><td><input type='text' name='address' value='" . $row['address'] . "'></td></tr>";
                echo "<tr><th>Phone number</th><td><input type='number' name='phno' value='" . $row['phno'] . "'></td></tr>";
                echo "<tr><td colspan='2'><input type='submit' value='Save' style='margin-top:20px;'></td></tr>";
                echo "</table>";
                echo "</center>";
                echo "</form>";
            } else {
                echo "No details found for the current employer.";
            }

            $conn->close();
        } else {
            echo "You are not logged in as an employer.";
        }
        ?>
    </div>
</body>
</html>

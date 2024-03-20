<?php
session_start(); 

if (!isset($_SESSION['empid'])) {

    header("Location: elogin.php");
    exit; 
}

$db_user = "root";
$db_password = "";
$db_name = "addemps";

$conn = new mysqli("localhost", $db_user, $db_password, $db_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['uid'])) {

    $uid = mysqli_real_escape_string($conn, $_GET['uid']);

    $sql = "DELETE FROM udet WHERE uid = '$uid'";

    if ($conn->query($sql) === TRUE) {

        header("Location: eview.php");
    } else {

        echo "Error deleting record: " . $conn->error;
    }
} else {

    echo "Invalid request. Employee ID not provided.";
}

$conn->close();
?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kurs";


$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT NAZWA, PLACA_MIN, PLACA_MAX FROM etaty";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br>". $row["NAZWA"]. " " . $row["PLACA_MIN"]. " "  . $row["PLACA_MAX"]. " " . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>


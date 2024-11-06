<?php
$host = "localhost";     // Database host
$username = "root";      // Database username
$password = "";          // Database password
$database = "db_rekapitulasi"; // Database name

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    $conn = new mysqli($host, $username, $password, $database);
} catch (mysqli_sql_exception $e) {
    echo "<script>alert('Connection failed: " . $e->getMessage() . "');</script>";
}

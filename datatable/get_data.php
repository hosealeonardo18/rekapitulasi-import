<?php
require_once('../config/connection.php');

$sql = "SELECT * FROM `rekapitulasi`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Mengambil semua baris sebagai array
    $data = $result->fetch_all(MYSQLI_ASSOC);

    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);
} else {
    $data = $result->fetch_all(MYSQLI_ASSOC);

    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);
}

$conn->close();

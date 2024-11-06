<?php
session_start();

require('vendor/autoload.php');
require_once('config/connection.php');

use PhpOffice\PhpSpreadsheet\IOFactory;

if (isset($_POST['submit']) && isset($_FILES['file'])) {
    if ($_FILES['file']['error'] === UPLOAD_ERR_OK) {
        $directory = 'public/assets/files/excel/';
        $fileName = $_FILES['file']['name'];

        $path = $directory . $fileName;

        if (move_uploaded_file($_FILES['file']['tmp_name'], $path)) {
            try {
                $spreadsheet = IOFactory::load($path);
                $worksheet = $spreadsheet->getActiveSheet();

                $stmt = $conn->prepare("INSERT INTO `rekapitulasi` (`uid`, `nama`, `nik`, `kecamatan`, `kelurahan`, `alamat`, `no_telp`, `no_tps`, `pj`, `keterangan`) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

                $inserted = 0;
                $skipped = 0;

                foreach ($worksheet->getRowIterator() as $row) {
                    $cellIterator = $row->getCellIterator();
                    $cellIterator->setIterateOnlyExistingCells(false);

                    $data = [];
                    foreach ($cellIterator as $cell) {
                        $data[] = $cell->getValue();
                    }

                    if (isset($data[1]) && $data[1] !== NULL && trim($data[1]) !== 'NAMA' && trim($data[1]) !== '2') {
                        $uid = getUid();
                        $nama = $data[1];
                        $nik = $data[2];
                        $kecamatan = $data[3];
                        $kelurahan = $data[4];
                        $alamat = $data[5];
                        $no_telp = $data[6] && $data[6] === "-" || $data[6] == NULL  ? NULL : $data[6];
                        $no_tps = $data[7];
                        $pj = $data[8];
                        $ket = $data[9];

                        $checkQuery = "SELECT COUNT(*) FROM `rekapitulasi` WHERE `nama` = ? AND `nik` = ?";
                        $checkStmt = $conn->prepare($checkQuery);
                        $checkStmt->bind_param("ss", $nama, $nik);
                        $checkStmt->execute();
                        $checkStmt->bind_result($count);
                        $checkStmt->fetch();
                        $checkStmt->close();

                        if ($count == 0) {
                            $stmt->bind_param("ssssssssss", $uid, $nama, $nik, $kecamatan, $kelurahan, $alamat, $no_telp, $no_tps, $pj, $ket);
                            $stmt->execute();
                            $inserted++;
                        } else {
                            $skipped++;
                        }
                    }
                }

                if ($inserted > 0) {
                    $_SESSION['message'] = "$inserted data berhasil di import!";
                    $_SESSION['alert_type'] = 'success';
                }

                if ($skipped > 0) {
                    $_SESSION['message'] .= "Terdapat $skipped duplikasi data .";
                    $_SESSION['alert_type'] = 'warning';
                }

                header("Location: index.php");
                exit();
            } catch (Exception $e) {
                $_SESSION['message'] = "Error: " . $e->getMessage();
                $_SESSION['alert_type'] = 'danger';

                header("Location: index.php");
                exit();
            } finally {
                unlink($path);
            }
        } else {
            $_SESSION['message'] = "Failed to upload file.";
            $_SESSION['alert_type'] = 'danger';

            header("Location: index.php");
            exit();
        }
    }
}


function getUid()
{
    $bytes = random_bytes(10);
    $base64 = base64_encode($bytes);
    return rtrim(strtr($base64, '+/', '-_'), '=');
}

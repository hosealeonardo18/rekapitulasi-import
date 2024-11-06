<?php
require_once('config/connection.php');
session_start();
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rekapitulasi</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery-treegrid@0.3.0/css/jquery.treegrid.min.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/extensions/group-by-v2/bootstrap-table-group-by.min.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta2/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.15.2/css/selectize.bootstrap5.min.css" />
    <link rel="stylesheet" href="https://spin.js.org/spin.css">



    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/moment@2.29.4/moment.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/bootstrap-table.min.js" crossorigin="anonymous">
    </script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/extensions/treegrid/bootstrap-table-treegrid.min.js"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/extensions/cookie/bootstrap-table-cookie.min.js"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.21.1/dist/extensions/group-by-v2/bootstrap-table-group-by.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-treegrid@0.3.0/js/jquery.treegrid.min.js" crossorigin="anonymous">
    </script>

</head>

<body>
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <h5 class="text-center mb-5 text-uppercase fw-bolder">Daftar Rekapitulasi Perhitungan</h5>
            </div>
            <div class="col-lg-12">
                <button class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#import_modal"><i class="fa-solid fa-plus me-2"></i>Import Data</button>

                <?php if (isset($_SESSION['message'])): ?>

                    <div class="alert alert-<?= $_SESSION['alert_type']; ?> mt-3" role="alert">
                        <?= $_SESSION['message']; ?>
                    </div>

                    <?php
                    // Clear message after displaying
                    unset($_SESSION['message']);
                    unset($_SESSION['alert_type']);
                    ?>
                <?php endif; ?>

                <div class="mt-2" style="max-height: 600px; overflow: auto;">
                    <table class="table table-sm small table-striped table-hover" id="rekapitulasi_datatable"></table>
                </div>
            </div>
        </div>
    </div>

    <!-- Include the modal file here -->
    <?php include 'modals/add_modal.php'; ?>


    <!-- datatables -->
    <script src="public/js/_init.js"></script>
    <script src="public/js/dt.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
</body>

</html>
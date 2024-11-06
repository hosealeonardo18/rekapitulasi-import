<!-- Modal -->
<div class="modal fade" id="import_modal" tabindex="-1" aria-labelledby="import_modal_label" aria-hidden="true">
    <div class="modal-dialog">
        <form method="post" action="import.php" enctype="multipart/form-data">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="import_modal_label">Import File Excel</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="file" class="form-control" name="file" accept=".xlsx, .xls" required>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="submit">Save changes</button>
                </div>
        </form>
    </div>
</div>
</div>
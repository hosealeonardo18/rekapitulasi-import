rekapitulasiDatatables.bootstrapTable({
  url: "../../datatable/get_data.php",
  showColumns: true,
  showColumnsToggleAll: true,
  showRefresh: true,
  sortable: true,
  search: true,
  searchOnEnterKey: false,
  searchHighlight: true,
  pagination: true,
  pageSize: 50,
  pageList: [25, 50, 100, 200],
  cookie: true,
  cookieIdTable: "rekapitulasi_data_table",
  icons: {
    refresh: "fas fa-sync",
    columns: "fas fa-th-list",
  },
  height: 600,

  columns: [
    {
      title: "NO",
      field: "id",
      sortable: true,
      formatter: (value, row, index) => {
        return index + 1; // Menampilkan nomor urut berdasarkan index
      },
    },
    {
      title: "NAMA",
      field: "nama",
      sortable: true,
      class: "text-nowrap",
    },
    {
      title: "NIK",
      field: "nik",
      sortable: true,
    },
    {
      title: "KECAMATAN",
      field: "kecamatan",
      sortable: true,
    },
    {
      title: "DESA/KEL",
      field: "kelurahan",
      sortable: true,
    },
    {
      title: "ALAMAT",
      field: "alamat",
      sortable: false,
    },
    {
      title: "NO. HP/WA",
      field: "no_telp",
      sortable: false,
      class: "text-nowrap",
    },
    {
      title: "NO. TPS",
      field: "no_tps",
      sortable: true,
      class: "text-center",
    },
    {
      title: "Penanggung Jawab",
      field: "pj",
      sortable: true,
    },
    {
      title: "KETERANGAN",
      field: "keterangan",
      sortable: false,
    },
    // {
    //   title: "AKSI",
    //   field: "uid",
    //   sortable: false,
    //   formatter: (value, row) => {
    //     let buttons = "";
    //     buttons += `
    //                 <button class="btn btn-datatable btn-icon btn-transparent-dark my-auto" onclick="editEmployeeModal('${row.uid}', '${row?.department_uid}', '${row?.sub_department_uid}', '${row?.division_uid}', '${row?.role_uid}', '${row?.marital_statuses_uid}', '${row?.employee_statuses_uid}', '${row?.location_uid}',  'edit_employee_item_modal')" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Edit">
    //                     <i class="far fa-edit fa-fw"></i>
    //                 </button>
    //             `;

    //     buttons += `
    //                 <button class="btn btn-datatable btn-icon btn-transparent-dark my-auto" onclick="deleteEmployeeListModal('${row.uid}', '${row.name}')" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Delete">
    //                     <i class="far fa-trash-can fa-fw"></i>
    //                 </button>
    //             `;

    //     return `
    //             <div class="d-flex space-x">
    //                 ${buttons}
    //             </div>
    //         `;
    //   },
    // },
  ],
  onPostBody: () => {
    const tooltipTriggerList = document.querySelectorAll(
      '[data-bs-toggle="tooltip"]'
    );
    const tooltipList = [...tooltipTriggerList].map(
      (tooltipTriggerEl) => new bootstrap.Tooltip(tooltipTriggerEl)
    );
  },
});

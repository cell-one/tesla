$(function (){
	alert(111);
	
// Table setup
    // ------------------------------

    // Setting datatable defaults
	$.extend( $.fn.dataTable.defaults, {
        columnDefs: [{ 
            orderable: true,
            width: '300px',
            targets: [ 0 ]
        }],
        dom: '<"datatable-header"f><"datatable-scroll-wrap"t><"datatable-footer"ipl>',
        language: {
            search: ' _INPUT_',
            lengthMenu: '<span>每页条数:</span> _MENU_',
            paginate: { 'first': 'First', 'last': 'Last', 'next': '&rarr;', 'previous': '&larr;' }
        }
    });


    // Left fixed column example
    $('.datatable-fixed-left').dataTable({
        columnDefs: [
            { 
                orderable: true,
                targets: [7]
            },
            { 
                width: "200px",
                targets: [0]
            }
        ],
        scrollX: true,
        scrollY: '350px',
        scrollCollapse: true,
        fixedColumns: false
    });
    
    $('.dataTables_length select').select2({
        minimumResultsForSearch: "-1"
    });
    
    $('.select-search').select2();

    // External table additions
    // ------------------------------

    // Add placeholder to the datatable filter option
    $('.dataTables_filter input[type=search]').attr('placeholder','搜索...');
    var qd = '<a href="javascript:;"  onclick="invoke(\'recruitment/plan/plan_show.html\')" class="plupload_button plupload_add" style="position: relative; z-index: 1;">生成招聘计划</a>';
    $('.datatable-header').append('<div class="btn-group DTTT_container">'+qd+'</div>');
});
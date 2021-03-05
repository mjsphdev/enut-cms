// Success Alert
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});

// User Module
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
    });
  
//User Datatable
$(document).on('ready', function () {
    $('#user-table').DataTable();
});

ClassicEditor
.create( document.querySelector( '#editor' ) )
.then( editor => {
    editor.ui.view.editable.element.style.height = '300px';
        console.log( editor );
} )
.catch( error => {
        console.error( error );
} );
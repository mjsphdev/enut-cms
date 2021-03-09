// Success Alert
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});

// User Module
  
//User Datatable
$(document).on('ready', function () {
    $('#user-table').DataTable();
});

//Announcement Module

// CKEditor
let newData; 

//Announcement Editor
ClassicEditor
.create( document.querySelector( '#editor' ) )
.then( editor => {
    editor.ui.view.editable.element.style.height = '300px';
        console.log( editor );
    newData = document.getElementById('announcementContent').value;
    editor.setData(newData);    
} )
.catch( error => {
        console.error( error );
} );

//File Editor
ClassicEditor
.create( document.querySelector( '#fileeditor' ) )
.then( editor => {
    editor.ui.view.editable.element.style.height = '300px';
        console.log( editor );
    newData = document.getElementById('fileContent').value;
    editor.setData(newData);    
} )
.catch( error => {
        console.error( error );
} );

//PUF Editor
ClassicEditor
.create( document.querySelector( '#pufeditor' ) )
.then( editor => {
    editor.ui.view.editable.element.style.height = '300px';
        console.log( editor );
    newData = document.getElementById('pufContent').value;
    editor.setData(newData);    
} )
.catch( error => {
        console.error( error );
} );
//PUF Description
$('textarea#description').val(document.getElementById('item_description').value);

//Daterange Picker
$(function() {

    var start = moment();
    var end = moment().add(29, 'days');

    function cb(start, end) {
        $('#post_validity span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
    }

    $('#post_validity').daterangepicker({
        startDate: start,
        endDate: end,
        ranges: {
           'Today': [moment(), moment()],
           '5 Days': [moment(), moment().add(5, 'days')],
           '7 Days': [moment(), moment().add(7, 'days')],
           '30 Days': [moment(), moment().add(30, 'days')],
           'This Month': [moment().startOf('month'), moment().endOf('month')],
        }
    }, cb);

    cb(start, end);

});

//Image Upload
$('#imageUpload').fileInput({
    iconClass: 'mdi mdi-fw mdi-upload'
});

//File Upload
$('#fileUpload').fileInput({
    iconClass: 'mdi mdi-fw mdi-upload'
});

//PUF Upload
$('#pufFile').fileInput({
    iconClass: 'mdi mdi-fw mdi-upload'
});



//Survey Type Module
$(document).on('ready', function() {
    $("#yearpicker").yearpicker({
       year: 2020,
       startYear: 1995,
       endYear: 2050,
    });
 });

//Show/Hide base on category
$('#category').on('change', function(){
    this.value == 'Presentation' ? document.getElementById('factsfigures').style.display = "none" : document.getElementById('factsfigures').style.display = "block"
});


//Year Survey Dropdown
$('#year').on('change', function(){
    $.ajax({
        url: 'year-survey',
        method: 'post',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {year:this.value},
        success:function(result){

            let len = result.length;
            $("#survey").empty();
            $("#survey").append('<option selected disabled value>Choose Survey</option>');
            for( let i = 0; i<len; i++){
                let id = result[i]['form_no'];
                let name = result[i]['survey'];           
                $("#survey").append("<option value='"+id+"'>"+name+"</option>");
            }

        }

    });
});

$(function (){
      let year = $('select#year').val();
      let survey = $('input#item_survey').val();
      $.ajax({
        url: 'year-survey',
        method: 'post',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {year:year},
        success:function(result){

            let len = result.length;
            $("#survey").empty();
            $("#survey").append('<option selected disabled value>Choose Survey</option>');
            for( let i = 0; i<len; i++){
                let id = result[i]['form_no'];
                let name = result[i]['survey'];           
                $("#survey").append("<option value='"+id+"' " + 
                (id=== survey ? 'selected="selected"' : '') +
                ">"+name+"</option>");
            }

        }

    });
    alert(survey)
});


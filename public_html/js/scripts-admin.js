$(function () {
    $('#example1').DataTable();
    $(".select2").select2();
    $('#datepicker').datepicker({
        autoclose: true,
        format: 'dd/mm/yy'
    });
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
        checkboxClass: 'icheckbox_minimal-blue',
        radioClass: 'iradio_minimal-blue'
    });
});

$(document).ready(function () {
    var editor = window.CKEDITOR.replaceAll();
    CKFinder.setupCKEditor( editor );
});
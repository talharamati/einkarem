
$(function() {

    $.datepicker.setDefaults( $.datepicker.regional[ '' ] );
    $('.datefield').datepicker({
        dateFormat: 'dd/mm/yy'
    });

});
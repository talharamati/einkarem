//function remove_fields(link) {
//    $(link).prev("input[type=hidden]").val("1");
//    $(link).closest(".fields").hide();
//}
//function add_fields(link, association, content) {
//    var new_id = new Date().getTime();
//    var regexp = new RegExp("new_" + association, "g")
//    $(link).parent().before(content.replace(regexp, new_id));
//}

$(function() {

    $("form.submit_on_change").each(function(idx,form){
        $(form).find("select").each(function(idx,element){
            $(element).change(function(){
                $(form).submit();
                return false;
            });
        });
    });

    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();

    $.datepicker.setDefaults( $.datepicker.regional[ 'he' ] );
    $('.datefield').datepicker();

});

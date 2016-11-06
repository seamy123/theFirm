
/**
 * Created by seamuso on 11/6/2016.
 */

$(function() {

    $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });

});


// $('#createNew').click(function() {
//     $dialog.dialog('open');
//     // prevent the default action, e.g., following a link
//     return false;
// });
//

function myFunction() {


    var $dialog = $('<div></div>')
        .html('<form id="myform" action=""><input type="checkbox"   id="completeCheck" name="completeCheck" value="" />Complete check<br /><input type="checkbox" name="view" value="Car" /> View report <br /><input type="checkbox" name="consist" value="" />Consistency check<br /><input type="checkbox" name="other" value="" />Other checks<br /><input type="checkbox" name="keyCheck" value="" />Key check<br /><input type="checkbox" name="compareCheck" value="" />Compare check<br /></form>')
        .dialog({
            modal: true,
            autoOpen: false,
            title: 'Data check',
            buttons: {
                "Submit Form":function() {$(this).dialog("close");},
                "Cancel": function() {$(this).dialog("close");}
            }
        });
    $dialog.dialog('open');
    console.log("Open");
}

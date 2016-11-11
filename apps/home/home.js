/**
 * Created by seamuso on 11/7/2016.
 */


$(document).ready(function(){
    $("input[type='button']").click(function() {

    });
});


function changeUrl(url) {
        console.log("Seamy")
    switch(url) {

        case 'btnSearchJobs':window.location.replace("http://stackoverflow.com"); break;
        case 'btnSavedJobs': window.location.replace("http://stackoverflow.com"); break;
        case 'btnJobAlerts':window.location.replace("http://stackoverflow.com"); break;
        case 'btnEditProfile': window.location.replace("http://localhost/The_Firm/apps/editProfile/index.html"); break;
        case 'btnContactUs': window.location.replace("http://localhost/The_Firm/apps/contactUs/index.html"); break;
    }

}
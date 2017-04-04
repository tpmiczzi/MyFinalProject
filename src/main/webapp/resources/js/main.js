jQuery('document').ready(function () {

    // jQuery('body').append('<a href="http://google.com">Go</a>');

});

function validateForm() {
    var xNameRoom = document.forms['formInputData']['nameRoom'].value;
    var xBadInRoom = document.forms['formInputData']['badInRoom'].value;
    var xPriceRoom = document.forms['formInputData']['priceRoom'].value;

    if (xNameRoom.length == 0) {
        document.getElementById('errorNameRoom').innerHTML = '* This field is required !';
        return false;
    }
    if (xBadInRoom.length == 0) {
        document.getElementById('errorBadInRoom').innerHTML = '* This field is required !';
        return false;
    }
    if (xPriceRoom.length == 0) {
        document.getElementById('errorPriceRoom').innerHTML = '* This field is required !';
        return false;
    }

    return radioButton();

}

function radioButton() {
    var elements = document.getElementsByName("freeOrBusy");
    for (var i = 0; i < elements.length; i++) {
        if (elements[i].checked) {
            return true;
        }
    }
    document.getElementById('errorFreeOrBusy').innerHTML = '* This field is required !';
    return false;
}

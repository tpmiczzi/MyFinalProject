function validate() {
    var xNameRoom = document.forms['errorCreateHotelRoom']['nameRoom'].value;
    var xBadInRoom = document.forms['errorBadInRoom']['badInRoom'].value;
    var xPriceRoom = document.forms['errorPriceRoom']['priceRoom'].value;
    //Если поле name пустое выведем сообщение и предотвратим отправку формы
    if (xNameRoom.length == 0) {
        document.getElementById('errorNameRoom').innerHTML = '* This field is required !';
        return false;
    }
    if(!/^[a-zA-Z]+$/.test(xNameRoom)){
        document.getElementById('errorNameRoom').innerHTML = '* This field should be from only letter !';
        return false;
    }

    // pattern="^[a-zA-Z]+$"
    //
    // //Если поле email пустое выведем сообщение и предотвратим отправку формы
    // if (xBadInRoom.length == 0) {
    //     document.getElementById('errorBadInRoom').innerHTML = '* This field is required !';
    //     return false;
    // }
    //
    // //Проверим содержит ли значение введенное в поле email символы @ и .
    // at = y.indexOf("@");
    // dot = y.indexOf(".");
    // //Если поле не содержит эти символы знач email введен не верно
    // if (at < 1 || dot < 1) {
    //     document.getElementById('emailf').innerHTML = '*email введен не верно';
    //     return false;
    // }
}

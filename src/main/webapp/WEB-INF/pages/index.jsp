<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>MyFinalProject</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <%--<link href="<c:url value="/resources/js/main.js" />" rel="text/javascript">--%>
    <%--<link rel="stylesheet" type="text/css" href="main.css">--%>

    <%--<script type='text/javascript'>--%>
        <%--function validate(){--%>
            <%--//Считаем значения из полей name и email в переменные x и y--%>
            <%--var x=document.forms['errorCreateHotelRoom']['nameRoom'].value;--%>
            <%--//Если поле name пустое выведем сообщение и предотвратим отправку формы--%>
            <%--if (x.length==0){--%>
                <%--document.getElementById('errorNameRoom').innerHTML='*This field is required';--%>
                <%--return false;--%>
            <%--}--%>
<%--//            //Если поле email пустое выведем сообщение и предотвратим отправку формы--%>
<%--//            if (y.length==0){--%>
<%--//                document.getElementById('emailf').innerHTML='*данное поле обязательно для заполнения';--%>
<%--//                return false;--%>
<%--//            }--%>
<%--//            //Проверим содержит ли значение введенное в поле email символы @ и .--%>
<%--//            at=y.indexOf("@");--%>
<%--//            dot=y.indexOf(".");--%>
<%--//            //Если поле не содержит эти символы знач email введен не верно--%>
<%--//            if (at<1 || dot <1){--%>
<%--//                document.getElementById('emailf').innerHTML='*email введен не верно';--%>
<%--//                return false;--%>
<%--//            }--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body class="page">

<h2>Enter next information</h2>
<div>
    <form:form method="post" action="createHotelRoom" name='errorCreateHotelRoom' onsubmit='return validate()'>
        <table>
            <tr>
                <th>name room</th>
                <th colspan="2">
                    <input name="nameRoom" type="text" >
                </th>
                <th>
                    <span style='color:red' id='errorNameRoom'></span>
                </th>
            </tr>
            <tr>
                <th>bad in room</th>
                <th colspan="2">
                    <input name="badInRoom" type="text" >
                </th>
                <th>
                    <span style='color:red' id='errorBadInRoom'></span>
                </th>
            </tr>
            <tr>
                <th>price room</th>
                <th colspan="2">
                    <input name="priceRoom" type="text" >
                </th>
                <th>
                    <span style='color:red' id='errorPriceRoom'></span>
                </th>
            </tr>
            <tr>
                <th>free or busy</th>
                <th>
                    <input name="freeOrBusy" type="radio" value="true">free room<Br>
                </th>
                <th>
                    <input name="freeOrBusy" type="radio" value="false">busy room<Br>
                </th>
            </tr>
            <tr>
                <th colspan="3">
                    <input class="button" type="submit" value="Save information" />
                </th>
            </tr>
        </table>
    </form:form>
</div>
<h2>Information about Hotel rooms</h2>
<table class="table">
    <tr>
        <th class="th">name room</th>
        <th class="th">bad in room</th>
        <th class="th">price room</th>
        <th class="th">free or busy</th>
    </tr>
    <c:forEach items="${hotelRoomList}" var="hotelRoomList">
        <tr>
            <th class="th">${hotelRoomList.nameRoom}</th>
            <th class="th">${hotelRoomList.badInRoom}</th>
            <th class="th">${hotelRoomList.priceRoom}</th>
            <th class="th">${hotelRoomList.freeOrBusy}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
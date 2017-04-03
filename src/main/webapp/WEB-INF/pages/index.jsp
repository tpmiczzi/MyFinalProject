<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>MyFinalProject</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet" type="text/css">
    <script src="<c:url value="/resources/js/jquery-3.2.0.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/main.js" />" type="text/javascript"></script>

    <%--<link href="main.css" rel="stylesheet" type="text/css">--%>

</head>
<body>
<div class="allDocument">

    <h2>Enter next information</h2>
    <div>
        <form:form method="post" action="createHotelRoom">
            <table class="tableInput">
                <tr>
                    <th>
                        <div>name room</div>
                    </th>
                    <th colspan="2">
                        <input name="nameRoom" type="text">
                    </th>
                    <th>
                        <span style='color:red' id='errorNameRoom'></span>
                    </th>
                </tr>
                <tr>
                    <th>bad in room</th>
                    <th colspan="2">
                        <input name="badInRoom" type="text">
                    </th>
                    <th>
                        <span style='color:red' id='errorBadInRoom'></span>
                    </th>
                </tr>
                <tr>
                    <th>price room</th>
                    <th colspan="2">
                        <input name="priceRoom" type="text">
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
                        <input class="button" type="submit" value="Save information"/>
                    </th>
                </tr>
            </table>
        </form:form>
    </div>
    <div>
        Information about Hotel rooms
    </div>
    <table class="tableOutput">
        <tr>
            <th>name room</th>
            <th>bad in room</th>
            <th>price room</th>
            <th>free or busy</th>
        </tr>
        <c:forEach items="${hotelRoomList}" var="hotelRoomList">
            <tr class="select">
                <th>${hotelRoomList.nameRoom}</th>
                <th>${hotelRoomList.badInRoom}</th>
                <th>${hotelRoomList.priceRoom}</th>
                <th>${hotelRoomList.freeOrBusy}</th>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
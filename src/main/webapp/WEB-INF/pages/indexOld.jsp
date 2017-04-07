<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>MyFinalProject</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet" type="text/css">
    <script src="<c:url value="/resources/js/jquery-3.2.0.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/main.js" />" type="text/javascript"></script>
</head>
<body>
<div class="allDocument">
    <h2>Enter next information</h2>
    <div>
        <form:form method="post" action="createHotelRoom" onsubmit="return validateForm()" name="formInputData">
            <table class="tableInput">
                <tr>
                    <td>
                        <div>name room</div>
                    </td>
                    <td>
                        <input name="nameHotel" type="text">
                    </td>
                    <td>
                        <span style='color:red' id='errorNameRoom'></span>
                    </td>
                </tr>
                <tr>
                    <td>bad in room</td>
                    <td>
                        <input name="badInRoom" type="text">
                    </td>
                    <td>
                        <span style='color:red' id='errorBadInRoom'></span>
                    </td>
                </tr>
                <tr>
                    <td>price room</td>
                    <td>
                        <input name="priceRoom" type="text">
                    </td>
                    <td>
                        <span style='color:red' id='errorPriceRoom'></span>
                    </td>
                </tr>
                <tr>
                    <td>free or busy</td>
                    <td>
                        <input name="freeOrBusy" type="radio" value="true">free room<Br>
                    </td>
                    <td>
                        <input name="freeOrBusy" type="radio" value="false">busy room<Br>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                        <span style='color:red' id='errorFreeOrBusy'></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input class="button" type="submit" value="Save information"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

    <h2>Information about Hotel rooms</h2>

    <table class="tableOutput">
        <tr class="tdThOutput">
            <th class="tdThOutput">name room</th>
            <th class="tdThOutput">bad in room</th>
            <th class="tdThOutput">price room</th>
            <th class="tdThOutput">free or busy</th>
        </tr>
        <c:forEach items="${hotelRoomOldList}" var="hotelRoomOldList">
            <tr class="select">
                <td class="tdThOutput">${hotelRoomOldList.nameHotel}</td>
                <td class="tdThOutput">${hotelRoomOldList.badInRoom}</td>
                <td class="tdThOutput">${hotelRoomOldList.priceRoom}</td>
                <td class="tdThOutput">${hotelRoomOldList.freeOrBusy}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
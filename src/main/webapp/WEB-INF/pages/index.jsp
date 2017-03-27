<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MyFinalProject</title>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/main.css">--%>
    <%--<style>--%>
        <%--<%@include file='../../css/main.css' %>--%>
    <%--</style>--%>
</head>
<body class="page">

<h2>Enter next information</h2>
<div>
    <form:form method="post" action="createHotelRoom">
        <table class="table">
            <tr>
                <td>name room</td>
                <td colspan="2">
                    <input name="nameRoom" type="text" required>
                </td>
            </tr>
            <tr>
                <td>bad in room</td>
                <td colspan="2">
                    <input name="badInRoom" type="text">
                </td>
            </tr>
            <tr>
                <td>price room</td>
                <td colspan="2">
                    <input name="priceRoom" type="text">
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
                <td colspan="3">
                    <input class="button" type="submit" value="Save information" onclick="alert('thanks')"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>
<h2>Information about Hotel rooms</h2>
<table class="table">
    <c:forEach items="${hotelRoomList}" var="hotelRoomList">
        <tr>
            <td>${hotelRoomList.nameRoom}</td>
            <td>${hotelRoomList.badInRoom}</td>
            <td>${hotelRoomList.priceRoom}</td>
            <td>${hotelRoomList.freeOrBusy}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
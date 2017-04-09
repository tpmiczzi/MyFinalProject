<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Hotel Data</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<h1>Hotel Details</h1>

<table class="tg">
    <tr>
        <td>ID</td>
        <td>${hotel.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${hotel.nameHotel}</td>
    </tr>
    <tr>
        <td>Country</td>
        <td>${hotel.countryHotel}</td>
    </tr>
    <tr>
        <td>Stars</td>
        <td>${hotel.starsHotel}</td>
    </tr>
    <tr>
        <td>Amount rooms</td>
        <td>${hotel.amountRooms}</td>
    </tr>
</table>
<br/>
<br/>
<br/>

<form:form method="POST" modelAttribute="hotelRoom">
    <form:label path="id">
        <spring:message text="ID"/>
    </form:label>
    <br/>
    <form:input path="id"/>
    <br/>
    <br/>
    <form:label path="nameRoom">
        <spring:message text="Name Room"/>
    </form:label>
    <br/>
    <form:input path="nameRoom"/>
    <br/>
    <br/>

</form:form>


<%--<c:url var="addDate" value="/room/addDate"/>--%>
<%--<form:form action="${addDate}" commandName="hotelRoom">--%>

    <%--<c:forEach items="${listHotelRoom}" var="hotelRoomOne">--%>
        <%--<form:form method="POST" modelAttribute="hotelRoome">--%>
            <%--<br/>--%>
            <%--<form:label path="nameRoom">--%>
                <%--<spring:message text="Name Room"/>--%>
            <%--</form:label>--%>
            <%--<br/>--%>
            <%--<form:input path="nameRoom"/>--%>
            <%--<br/>--%>
        <%--</form:form>--%>
        <%--${hotelRoomOne.id}--%>
        <%--${hotelRoomOne.nameRoom}--%>
        <%--<table>--%>
                <%--&lt;%&ndash;<c:if test="${!empty hotelRoom.nameRoom}">&ndash;%&gt;--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="id">--%>
                        <%--<spring:message text="ID"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="id" readonly="true" size="8" disabled="true"/>--%>
                        <%--&lt;%&ndash;<form:hidden path="id"/>&ndash;%&gt;--%>
                <%--</td>--%>
            <%--</tr>--%>
                <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="nameRoom">--%>
                        <%--<spring:message text="Name Room"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="nameRoom"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="amountBed">--%>
                        <%--<spring:message text="amount Bed"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="amountBed"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="price">--%>
                        <%--<spring:message text=" price"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="price"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="bookedFrom">--%>
                        <%--<spring:message text="booked from"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="bookedFrom"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="bookedTo">--%>
                        <%--<spring:message text="booked To"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="bookedTo"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td colspan="2">--%>
                    <%--<c:if test="${!empty hotelRoomOne.nameRoom}">--%>
                        <%--<input type="submit"--%>
                               <%--value="<spring:message text="Edit room"/>"/>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${empty hotelRoomOne.nameRoom}">--%>
                        <%--<input type="submit"--%>
                               <%--value="<spring:message text="Add room"/>"/>--%>
                    <%--</c:if>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</c:forEach>--%>

<%--</form:form>--%>


<%--<table class="tg">--%>
<%--<tr>--%>
<%--<th width="80">ID</th>--%>
<%--<th width="120">Name Room</th>--%>
<%--<th width="120">Amount Bed</th>--%>
<%--<th width="120">Price</th>--%>
<%--<th width="80">Booked From</th>--%>
<%--<th width="80">Booked To</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${hotelRoom}" var="hotelRoom">--%>

<%--&lt;%&ndash;<c:url var="addActionHotelRoom" value="/room/addDate"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:form action="${addActionHotelRoom}" commandName="hotelRoom">&ndash;%&gt;--%>
<%--<tr>--%>
<%--<td>${hotelRoom.id}</td>--%>
<%--<td>${hotelRoom.nameRoom}</td>--%>
<%--<td>${hotelRoom.amountBed}</td>--%>
<%--<td>${hotelRoom.price}</td>--%>
<%--<td>--%>

<%--<c:if test="${not empty hotelRoom.bookedFrom}">--%>
<%--&lt;%&ndash;not null&ndash;%&gt;--%>
<%--${hotelRoom.bookedFrom}--%>
<%--</c:if>--%>

<%--<c:if test="${empty hotelRoom.bookedFrom}">--%>
<%--null--%>

<%--&lt;%&ndash;<input name="inputDate" path="bookedFrom"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:set target="${hotelRoom}" property="bookedFrom" value="${inputDate}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:set>&ndash;%&gt;--%>

<%--&lt;%&ndash;<c:out value="${hotelRoom.bookedFrom}"></c:out>&ndash;%&gt;--%>

<%--&lt;%&ndash;<c:set var="bookedFrom">&ndash;%&gt;--%>
<%--&lt;%&ndash;<spring:message code="display.dateFormat" />&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:set>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:set var="bookedFrom" value="12"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<input type="submit" value="save"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form:input path="inputBookedFrom"/>&ndash;%&gt;--%>


<%--</td>--%>

<%--<td>${hotelRoom.bookedTo}</td>--%>
<%--</tr>--%>
<%--</c:if>--%>
<%--&lt;%&ndash;</form:form>&ndash;%&gt;--%>
<%--</c:forEach>--%>
<%--</table>--%>
</body>
</html>
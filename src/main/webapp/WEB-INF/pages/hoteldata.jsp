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

<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Name Room</th>
        <th width="120">Amount Bed</th>
        <th width="120">Price</th>
        <th width="80">Booked From</th>
        <th width="80">Booked To</th>
    </tr>
    <c:forEach items="${hotelRoom}" var="bookedFrom">
    <tr>
        <td>${hotelRoom.id}</td>
        <td>${hotelRoom.nameRoom}</td>
        <td>${hotelRoom.amountBed}</td>
        <td>${hotelRoom.price}</td>
        <td>
            <c:url var="addActionHotelRoom" value="/room/addDate"/>
            <form:form action="${addActionHotelRoom}" commandName="hotelRoom">
                <c:if test="${not empty hotelRoom.bookedFrom}">
                    <%--not null--%>
                    ${hotelRoom.bookedFrom}
                </c:if>
                <c:if test="${empty hotelRoom.bookedFrom}">
                    <%--null--%>
                    <form:input path="bookedFrom"/>
                </c:if>
            </form:form>
        </td>
        <td>${hotelRoom.bookedTo}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
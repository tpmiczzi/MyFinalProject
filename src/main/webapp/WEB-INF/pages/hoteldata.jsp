<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<a href="/hotels">list all hotels</a>
<br/>
<br/>

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
        <th width="80">button</th>
    </tr>
    <c:forEach items="${listHotelRoom}" var="oneHotelRoom">

        <tr>
            <td>${oneHotelRoom.id}</td>
            <td>${oneHotelRoom.nameRoom}</td>
            <td>${oneHotelRoom.amountBed}</td>
            <td>${oneHotelRoom.price}</td>
            <td>

                <c:if test="${not empty oneHotelRoom.bookedFrom}">
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${oneHotelRoom.bookedFrom}"/>
                </c:if>
                <c:if test="${empty oneHotelRoom.bookedFrom}">
                    null
                </c:if>
            </td>
            <td>
                <c:if test="${not empty oneHotelRoom.bookedTo}">
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${oneHotelRoom.bookedTo}"/>
                </c:if>

                <c:if test="${empty oneHotelRoom.bookedTo}">
                    null
                </c:if>
            </td>

            <td><a href="<c:url value='/roomBook/${oneHotelRoom.id}'/>">book</a></td>

        </tr>

    </c:forEach>
</table>

<br/>
<br/>
<a href="/room/changeroom/${hotel.id}">Change rooms</a>

</body>
</html>
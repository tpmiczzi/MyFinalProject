<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<%--<jsp:useBean id="someModel" scope="request" type="ua.tourism.controller.HotelController"/>--%>
<html>
<head>
    <title>Hotel Page</title>

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
<a href="startpage">Start page</a>

<br/>
<br/>

<h1>ALL Hotel </h1>

<c:if test="${!empty listHotels}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Country</th>
            <th width="120">Stars</th>
            <th width="60">Amount rooms</th>
        </tr>
        <c:forEach items="${listHotels}" var="hotel">
            <tr>
                <td>${hotel.id}</td>
                <td><a href="/hoteldata/${hotel.id}">${hotel.nameHotel}</a></td>
                <td>${hotel.countryHotel}</td>
                <td>${hotel.starsHotel}</td>
                <td>${hotel.amountRooms}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<br/>
<br/>
<a href="/hotel/changehotel">Change hotel</a>

</body>
</html>

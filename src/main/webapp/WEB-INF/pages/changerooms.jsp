<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list rooms for change</title>

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

<h2>List rooms for change</h2>

<c:set var="objectHotel"/>

<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="80">hotel ID</th>
        <th width="120">Name Room</th>
        <th width="120">Amount Bed</th>
        <th width="120">Price</th>
        <th width="80">Booked From</th>
        <th width="80">Booked To</th>
        <th width="60">Edit</th>
        <th width="60">Remove</th>
    </tr>
    <c:forEach items="${listRooms}" var="oneHotelRoom">

        <tr>
            <td>${oneHotelRoom.id}</td>
            <td>${oneHotelRoom.hotel.id}</td>
            <c:set var="objectHotel" value="${oneHotelRoom.hotel}"/>
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

            <td><a href="<c:url value='/room/edit/${oneHotelRoom.id}'/>">Edit</a></td>
            <td><a href="<c:url value='/room/remove/${oneHotelRoom.id}'/>">Delete</a></td>

        </tr>

    </c:forEach>
</table>

<br/>
<br/>
<br/>

<c:url var="roombook" value="/newroom/add"/>

<form:form action="${roombook}" commandName="oneroom" method="post">
    <table>
        <c:if test="${!empty oneroom.nameRoom}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <c:if test="${!empty oneroom.nameRoom}">
        <tr>
            <td>
                <form:label path="hotel">
                    <spring:message text="hotel"/>
                </form:label>
            </td>
            <td>
                <form:input path="hotel" value="${objectHotel.id}" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="nameRoom">
                    <spring:message text="Name ROOM"/>
                </form:label>
            </td>
            <td>
                <form:input path="nameRoom"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="amountBed">
                    <spring:message text="amountBed"/>
                </form:label>
            </td>
            <td>
                <form:input path="amountBed"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookedFrom">
                    <spring:message text="bookedFrom"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookedFrom" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookedTo">
                    <spring:message text="bookedTo"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookedTo" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty oneroom.nameRoom}">
                    <input type="submit"
                           value="<spring:message text="Edit Room"/>"/>
                </c:if>
                <c:if test="${empty oneroom.nameRoom}">
                    <input type="submit"
                           value="<spring:message text="Add Room"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

<br/>
<br/>

<a href="/hoteldata/${listRooms[0].hotel.id}">Back home</a>

</body>
</html>

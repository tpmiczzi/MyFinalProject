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
            <%--<th width="60">Edit</th>--%>
            <%--<th width="60">Remove</th>--%>
        </tr>
        <c:forEach items="${listHotels}" var="hotel">
            <tr>
                <td>${hotel.id}</td>
                <td><a href="/hoteldata/${hotel.id}" target="_blank">${hotel.nameRoom}</a></td>
                <td>${hotel.countryHotel}</td>
                <td>${hotel.starsHotel}</td>
                <td>${hotel.amountRooms}</td>
                <%--<td><a href="<c:url value='/edit/${hotel.id}'/>">Edit</a></td>--%>
                <%--<td><a href="<c:url value='/remove/${hotel.id}'/>">Delete</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>

<br/>
<br/>
<a href="/hotel/changehotel">Change hotel</a>

<%--<h1>Add a Hotel</h1>--%>

<%--<c:url var="addAction" value="/hotel/add"/>--%>

<%--<form:form action="${addAction}" commandName="hotel">--%>
    <%--<table>--%>
        <%--<c:if test="${!empty hotel.nameRoom}">--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="id">--%>
                        <%--<spring:message text="ID"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="id" readonly="true" size="8" disabled="true"/>--%>
                    <%--<form:hidden path="id"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:if>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="nameRoom">--%>
                    <%--<spring:message text="Name Hotel"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="nameRoom"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="countryHotel">--%>
                    <%--<spring:message text="Country"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="countryHotel"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="starsHotel">--%>
                    <%--<spring:message text="Stars Hotel"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="starsHotel"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="amountRooms">--%>
                    <%--<spring:message text="Amount Rooms"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="amountRooms"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<c:if test="${!empty hotel.nameRoom}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Edit Hotel"/>"/>--%>
                <%--</c:if>--%>
                <%--<c:if test="${empty hotel.nameRoom}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Add Hotel"/>"/>--%>
                <%--</c:if>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>

</body>
</html>

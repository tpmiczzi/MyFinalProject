<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change Hotel</title>
</head>
<body>

<h1>List Hotel for CHANGE</h1>

<c:if test="${!empty listHotels}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Country</th>
            <th width="120">Stars</th>
            <th width="60">Amount rooms</th>
            <th width="60">Edit</th>
            <th width="60">Remove</th>
        </tr>
        <c:forEach items="${listHotels}" var="hotel">
            <tr>
                <td>${hotel.id}</td>
                <td>${hotel.nameHotel}</td>
                <td>${hotel.countryHotel}</td>
                <td>${hotel.starsHotel}</td>
                <td>${hotel.amountRooms}</td>
                <td><a href="<c:url value='/edit/${hotel.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${hotel.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<br/>
<br/>

<c:url var="addAction" value="/hotel/add"/>

<form:form action="${addAction}" commandName="hotel">
    <table>
        <c:if test="${!empty hotel.nameHotel}">
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
        <tr>
            <td>
                <form:label path="nameHotel">
                    <spring:message text="Name Hotel"/>
                </form:label>
            </td>
            <td>
                <form:input path="nameHotel"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="countryHotel">
                    <spring:message text="Country"/>
                </form:label>
            </td>
            <td>
                <form:input path="countryHotel"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="starsHotel">
                    <spring:message text="Stars Hotel"/>
                </form:label>
            </td>
            <td>
                <form:input path="starsHotel"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="amountRooms">
                    <spring:message text="Amount Rooms"/>
                </form:label>
            </td>
            <td>
                <form:input path="amountRooms"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty hotel.nameHotel}">
                    <input type="submit"
                           value="<spring:message text="Edit Hotel"/>"/>
                </c:if>
                <c:if test="${empty hotel.nameHotel}">
                    <input type="submit"
                           value="<spring:message text="Add Hotel"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

<br/>
<br/>

<a href="/hotels">Back home</a>

</body>
</html>

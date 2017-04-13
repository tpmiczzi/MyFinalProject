<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>room book</title>
</head>
<body>

<c:url var="roombook" value="/room/add"/>

<form:form action="${roombook}" commandName="oneroombook" method="post">
    <table>
        <c:if test="${!empty oneroombook.nameRoom}">
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
                <form:label path="nameRoom">
                    <spring:message text="Name ROOM"/>
                </form:label>
            </td>
            <td>
                <form:input path="nameRoom" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="amountBed">
                    <spring:message text="amountBed"/>
                </form:label>
            </td>
            <td>
                <form:input path="amountBed" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price" readonly="true" size="8" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookedFrom">
                    <spring:message text="bookedFrom"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookedFrom" />
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookedTo">
                    <spring:message text="bookedTo"/>
                </form:label>
            </td>
            <td>
                    <form:input path="bookedTo"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message text="Book room"/>"/>
            </td>
        </tr>
    </table>
</form:form>


</body>
</html>

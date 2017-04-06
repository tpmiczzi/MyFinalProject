<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start Page</title>
</head>
<body>
    <h3>hello</h3>
    тут будет стартовая страница сайта, картинка (может анимация), по ссылке откроеться список доступных отелей
    <br/>
        <a href="<c:url value="/hotels"/>">hotels list</a>
    <br/>
</body>
</html>

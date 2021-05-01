<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: linux_alex
  Date: 4/29/21
  Time: 1:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Info</title>
</head>
<body>
<h2> Информация о работнике</h2>

<br>

<form:form action="/saveEmployee" modelAttribute="employeees">

    <form:hidden path="id"/>
    Имя <form:input path="name"/>
    <br>
    Фамилия <form:input path="surname"/>
    <br>
    Отдел <form:input path="department"/>
    <br>
    Зарплата <form:input path="salary"/>
    <br>
    <input type="submit" value="Добавить">
</form:form>

</body>
</html>

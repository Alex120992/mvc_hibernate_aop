<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>работники</title>
</head>
<body>

<h2> Все работники</h2>
<br>

<table>
    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отдел</th>
        <th>Зарплата</th>
        <th>Операция</th>
    </tr>
    <br>
    <c:forEach var="emp" items="${allEmps}"> <%-- allEmps - название ключа model--%>
        <c:url var="updateButton" value="/updateInfo">
<%--            ссылка а внутри параметр, который не будет отображаться--%>
            <c:param name="empId" value="${emp.id}">
            </c:param>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <%--            ссылка а внутри параметр, который не будет отображаться--%>
            <c:param name="empId" value="${emp.id}">
            </c:param>
        </c:url>
        <tr>
            <td>
                    ${emp.name}
            </td>
            <td>
                    ${emp.surname}
            </td>
            <td>
                    ${emp.department}
            </td>
            <td>
                    ${emp.salary}
            </td>
            <td>
                <input type="button" value="Обновить" onclick="window.location.href = '${updateButton}'">
            </td>
            <td>
                <input type="button" value="Удалить" onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
    </tr>
</table>
<br>
<br>
<input type="button" value="ADD" onclick="window.location.href = 'addNewEmployee'">


</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
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
    </tr>
    <br>
    <c:forEach var="emp" items="${allEmps}"> <%-- allEmps - название ключа model--%>
        <tr>
            <td>
               ${emp.name}
            </td><td>
               ${emp.surname}
            </td><td>
               ${emp.department}
            </td><td>
               ${emp.salary}
            </td>

        </tr>
    </c:forEach>
    </tr>
</table>

</body>
</html>

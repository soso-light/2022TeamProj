<%--
  Created by IntelliJ IDEA.
  User: soundligt
  Date: 2022-12-03
  Time: 오후 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>레시피</h1>
<table id="list" width="90%">
    <tr>
        <th>num</th>
        <th>Writer</th>
        <th>Title</th>
        <th>Cooking time</th>
        <th>likes</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.userid}</td>
            <td>${u.title}</td>
            <td>${u.cookingTime}</td>
            <td>${u.regdate}</td>
            <td>${u.likes}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/><a href="add">Add new post</a>
</body>
</html>

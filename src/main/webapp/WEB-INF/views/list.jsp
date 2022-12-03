<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
        <th>Regdate</th>
        <th>likes</th>
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
            <td><a href="/board/editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/><a href="/board/add">Add new post</a>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='/board/deleteok/'+ id;
    }
</script>
</body>
</html>

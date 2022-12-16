<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>List</title>
    <link href="../css/my.css" rel="stylesheet">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <meta name="theme-color" content="#712cf9">
    <link href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">FlowRecipe</a>
    </div>
</nav>
<main class="container">
    <div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
        <h1 class="h4 mb-0 text-white lh-1">Recipe List</h1>
    </div>

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <div class="table-responsive">
            <table id="list" width="90%" class="table table-striped table-sm">
                <tr>
                    <th scope="col">num</th>
                    <th scope="col">Writer</th>
                    <th scope="col">Title</th>
                    <th scope="col">Cooking time</th>
                    <th scope="col">Regdate</th>
                    <th scope="col">level</th>
                    <th scope="col">Edit</th>
                    <th scope="col">Delete</th>
                </tr>
                <c:forEach items="${list}" var="u">
                    <tr>
                        <td>${u.seq}</td>
                        <td>${u.userid}</td>
                        <td>${u.title}</td>
                        <td>${u.cookingTime}</td>
                        <td>${u.regdate}</td>
                        <td>${u.level}</td>
                        <td><a class="btn text-white bg-purple" href="editform/${u.seq}">Edit</a></td>
                        <td><a class="btn text-white bg-purple" href="javascript:delete_ok('${u.seq}')">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <small class="d-block text-end mt-3">
            <a class="btn text-white bg-purple" href="add" role="button">Add</a>
        </small>

    </div>
</main>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='deleteok/'+ id;
    }
</script>
</body>
</html>

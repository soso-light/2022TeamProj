<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add</title>
    <link href="../css/my.css" rel="stylesheet">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
        <h1 class="h4 mb-0 text-white lh-1">Add New Recipe</h1>
    </div>

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <form name="form_add" action="addok" method="post">
            <div class="row g-3">
                <div class="col-sm-4">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" name="title" class="form-control" id="title"/>
                </div>
                <div class="col-sm-4">
                    <label for="userid" class="form-label">Userid</label>
                    <input type="text" name="userid" class="form-control" id="userid"/>
                </div>
                <div class="col-sm-4">
                    <label for="level" class="form-label">Level</label>
                    <input type="number" name="level" class="form-control" id="level"/>
                </div>

                <div class="col-sm-4">
                    <label for="cookingTime" class="form-label">Cooking Time</label>
                    <input type="text" name="cookingTime" class="form-control" id="cookingTime"/>

                </div>
                <div class="col-sm-4">
                    <label for="cookingTools" class="form-label">Cooking Tools</label>
                    <textarea cols="50" rows="5" name="cookingTools" class="form-control" id="cookingTools"></textarea>
                </div>
                <div class="col-sm-4">
                    <label for="ingredients" class="form-label">Ingredients</label>
                    <textarea cols="50" rows="5" name="ingredients" class="form-control" id="ingredients"></textarea>
                </div>

                <div class="col-sm-12">
                    <label for="recipe" class="form-label">Recipe</label>
                    <textarea cols="50" rows="5" name="recipe" id="recipe" class="form-control"></textarea>
                </div>
            </div>
            <hr class="my-4">

            <div class="row g-3">
                <div class="col-sm-4">
                    <button class="w-50 btn text-white bg-purple btn-lg" type="button" onclick="location.href='list'">목록
                    </button>
                </div>
                <div class="col-sm-4">
                    <button class="w-50 btn text-white bg-purple btn-lg" type="submit">완료</button>
                </div>
                <div class="col-sm-4">
                    <button class="w-50 btn text-white bg-purple btn-lg" type="reset">초기화</button>
                </div>
            </div>
        </form>
    </div>
</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>add</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
  <table>
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Userid:</td><td><input type="text" name="userid"/></td></tr>
    <tr><td>Cooking Time:</td><td><input type="text" name="cookingTime"/></td></tr>
    <tr><td>Cooking Tools:</td><td><textarea cols="50" rows="5" name="cookingTools"></textarea></td></tr>
    <tr><td>Ingredients:</td><td><textarea cols="50" rows="5" name="ingredients"></textarea></td></tr>
    <tr><td>Recipe:</td><td><textarea cols="50" rows="5" name="recipe"></textarea></td></tr>
    <tr><td>Likes:</td><td><input type="text" name="likes"/></td></tr>
    <tr><td align="right"><button type="button" onclick="location.href='list'">목록</button> </td><td><input type="submit"/></td></tr>
  </table>
</form>

</body>
</html>
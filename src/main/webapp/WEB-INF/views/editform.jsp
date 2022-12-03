<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>add</title>
</head>
<body>


<h1>Edit New Post</h1>
<form:form modelAttribute="u" action="../editok" method="POST">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>Title:</td><td><form:input path="title"/></td></tr>
    <tr><td>Userid:</td><td><form:input type="text" path="userid"/></td></tr>
    <tr><td>Cooking Time:</td><td><form:input type="text" path="cookingTime"/></td></tr>
    <tr><td>Cooking Tools:</td><td><form:textarea cols="50" rows="5" path="cookingTools"></form:textarea></td></tr>
    <tr><td>Ingredients:</td><td><form:textarea cols="50" rows="5" path="ingredients"></form:textarea></td></tr>
    <tr><td>Recipe:</td><td><form:textarea cols="50" rows="5" path="recipe"></form:textarea></td></tr>
    <tr><td>Likes:</td><td><form:input type="text" path="likes"/></td></tr>
    <tr><td align="right"><button type="button" onclick="location.href='list'">목록</button> </td><td><input type="submit"/></td></tr>
  </table>
</form:form>

</body>
</html>
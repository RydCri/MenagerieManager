
<%--
  Created by IntelliJ IDEA.
  User: lexibor
  Date: 3/22/23
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit ad</title>

</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<form action="/ads/edit" method="post">
    <div class="form-group">
        <label for="title">Title</label>
        <input id="title" name="title" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea id="description" name="description" class="form-control" type="text"></textarea>
    </div>
    <div class="form-group">
        <label for="gender">Gender</label>
        <select id="gender" name="gender" class="form-control" type="text">
            <option value="female">F</option>
            <option value="male">M</option>
            <option value="unknown">N/A</option>
        </select>
    </div>
    <div class="form-group">
        <label for="age">Age</label>
        <input id="age" name="age" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="price">Price</label>
        <input id="price" name="price" class="form-control" type="text" placeholder="##,###,###.##">
    </div>
    <div class="form-group">
        <label for="img_url">IMG URL</label>
        <textarea id="img_url" name="img_url" class="form-control" type="url"></textarea>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
</form>

</body>
</html>

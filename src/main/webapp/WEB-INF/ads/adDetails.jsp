<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Placeholder~~~</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile">${sessionScope.user.username}</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>

<c:forEach var="ad" items="${ads}">
    <div class="ms-2 col-6">
        <h2>${ad.title}<span id="gender"> ${ad.gender}</span></h2>
        <img src="${ad.img_url}">
        <p>${ad.description}</p>
        <hr>
    </div>
</c:forEach>
<script src="<c:url value="/js/jquery.js"/>"></script>
<script>

   let gender = $('#gender');
   if(gender.val() === 'female'){
       gender.addClass('Female');
   }else if(gender.val() === 'male'){
       gender.addClass('Male');
   } else if(gender.val() === 'unknown'){
       gender.addClass('NA');
   }
</script>

</body>
</html>
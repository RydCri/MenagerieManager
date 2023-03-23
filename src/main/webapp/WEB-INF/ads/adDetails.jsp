<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Placeholder~~~</title>

    <jsp:include page="/WEB-INF/partials/favicon.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/cursors.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/menagerieStyle.jsp"></jsp:include>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="text-shadow: 1px 1px 0 magenta;font-family: 'Balsamiq Sans', Charm, serif!important;" href="/ads">Menagerie</a>
        </div>
        <ul class="nav navbar-nav navbar-right flex-row mr-1">
            <li><a href="/profile" class="m-1">Profile</a></li>
            <li><a href="/ads/create" class="m-1">Create New Ad!</a></li>
            <li><a href="/logout" class="m-1">Logout</a></li>
        </ul>
    </div>
</nav>

<c:forEach var="ad" items="${ads}">
    <c:if test="${param.id == ad.id}">
        <div class="col-sm-4">
            <div class="hero-container">
                <div class="main-container">
                    <div class="poster-container">
                        <a href="/ads/adDetails?id=${ad.id}"><img src="${ad.img_url}" class="poster" /></a>
                    </div>
                </div>
                <div class="ad_content">
                    <ul><h4>Name: ${ad.title}</h4></ul>
                    <ul><h4>Bio: ${ad.description}</h4></ul>
                    <ul> <h4>Gender: ${ad.gender}</h4></ul>
                    <ul> <h4>Age: ${ad.age}</h4></ul>
                    <ul> <h4 style="color: red">Price: $${ad.price}</h4></ul>
                </div>
            </div>
        </div>
    </c:if>
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
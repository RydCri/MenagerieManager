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
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right flex-row">
            <li><a href="/profile" class="m-1">Profile</a></li>
            <li><a href="/ads/create" class="m-1">Create New Ad!</a></li>
            <li><a href="/logout" class="m-1">Logout</a></li>
        </ul>
    </div>
</nav>

<c:forEach var="ad" items="${ads}">
    <div class="hero-container">
        <div class="main-container">
            <div class="poster-container">
                <img src="${ad.img_url}" class="poster" />
            </div>
            <div class="ticket-container">
                <div class="ticket__content">
                    <h4 class="ticket__movie-title">${ad.title}</h4>
                    <div class="ticket__movie-slogan">
                        <li>Description: ${ad.description}</li>
                        <li>Gender: ${ad.gender}</li>
                        <li>Age: ${ad.age}</li>
                    </div>
                    <p class="ticket__current-price">$${ad.price}</p>
                </div>
            </div>
        </div>
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
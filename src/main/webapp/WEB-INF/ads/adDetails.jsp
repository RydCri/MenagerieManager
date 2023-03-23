<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Create an Ad :)r~~~</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <jsp:include page="/WEB-INF/partials/favicon.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/cursors.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/menagerieStyle.jsp"></jsp:include>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>

<nav class="navbar navbar-default" style="flex-direction: row!important;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="text-shadow: 1px 1px 0 magenta;font-family: 'Balsamiq Sans', Charm, serif!important;" href="/ads">Menagerie</a>
        </div>
        <ul class="navUl">
            <c:if test="${sessionScope.user != null}">
                <li><a href="/profile" class="">Logged in: ${sessionScope.user.username}<svg width="28px" height="28px" viewBox="0 0 64 64" id="wizard" xmlns="http://www.w3.org/2000/svg"><title>wizard</title><line x1="7" y1="17" x2="7" y2="19" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="7" y1="23" x2="7" y2="25" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M53.15,49.3A8.754,8.754,0,0,1,56,55.778V61H13V55.778A8.76,8.76,0,0,1,16.2,49" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="28.216" y1="60.569" x2="31.24" y2="54.52" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="35" y1="55" x2="32.216" y2="60.569" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="3" y1="21" x2="5" y2="21" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="9" y1="21" x2="11" y2="21" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="55.5" cy="6.5" r="2.5" style="fill:#13FFD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="13.984" cy="6.603" r="1.069"/><path d="M47.247,44.161C54.284,43.115,59,41.2,59,39" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M11,39c0,2.09,4.273,3.93,10.753,5" style="fill:none;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M19.6,34.4C14.342,35.5,11,37.152,11,39v4.236A5.763,5.763,0,0,0,16.764,49L34,55l19.236-6A5.763,5.763,0,0,0,59,43.236V39c0-1.968-3.79-3.715-9.645-4.809" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="5.984" cy="30.603" r="1.069"/><path d="M48,13V10.143A6.143,6.143,0,0,0,41.857,4H27.143A6.143,6.143,0,0,0,21,10.143V13" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M41.972,13H48a4,4,0,0,1,4,4h0a4,4,0,0,1-4,4H21a4,4,0,0,1-4-4h0a4,4,0,0,1,4-4H31.079" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="39.5" cy="25.5" r="1.136"/><circle cx="29.5" cy="25.5" r="1.136"/><path d="M20,21V36.5a14.5,14.5,0,0,0,29,0V21.273" style="fill:#ffffff;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M49,32H43.875a6.472,6.472,0,0,0-5.219-2.2A5.2,5.2,0,0,0,35,31.974,5.2,5.2,0,0,0,31.344,29.8,6.472,6.472,0,0,0,26.125,32H20" style="fill:#ffffff;stroke:#000000;stroke-linejoin:round;stroke-width:2px"/><line x1="33" y1="36" x2="37" y2="36" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><rect x="32" y="10" width="5" height="5" transform="translate(1.266 28.056) rotate(-45)" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/></svg></a></li>
                <li><a href="/ads/create" class="">Create Ad</a></li>
                <li><a href="/logout" class="">Logout</a></li>
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login" class="">Login</a></li>
            </c:if>
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
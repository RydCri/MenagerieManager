<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right flex-row">
            <c:if test="${sessionScope.user != null}">
                <li><a href="/profile" class="m-1">Profile</a></li>
                <li><a href="/ads/create" class="m-1">Create New Ads!</a></li>
                <li><a href="/logout" class="m-1">Logout</a></li>
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login" class="m-1">Login</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav><div class="d-flex row col-12">
    <h1 class="col-12 text-center">Adlister</h1>
</div>
<div class="row">


    <a class="col-12 text-center" href="/ads/create"><strong>Make a new ad</strong></a>
</div>
</body>
</html>

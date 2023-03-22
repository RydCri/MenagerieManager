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
<jsp:include page="/WEB-INF/partials/navStyle.jsp"/>
<nav>
    <div class="navicon">
    </div>
            <a class="" href="/ads">Adlister</a>
            <c:if test="${sessionScope.user != null}">
                <a href="/profile" class="">Profile</a>
                <a href="/ads/create" class="">Create New Ads!</a>
                <a href="/logout" class="">Logout</a>
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <a href="/login" class="">Login</a>
            </c:if>
        </ul>
</nav>
<%--<div class="d-flex row col-12">--%>
<%--    <h1 class="col-12 text-center">Adlister</h1>--%>
<%--</div>--%>

<c:forEach var="ad" items="${ads}">
    <div class="hero-container">
        <div class="main-container">
            <div class="poster-container">
                <img src="${ad.img_url}" class="poster"/>
            </div>
            <div class="ticket-container">
                <div class="ticket__content">
                    <h4 class="ticket__movie-title">${ad.title}</h4>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

<%--<div class="row">--%>
<%--    <a class="col-12 text-center" href="/ads/create"><strong>Make a new ad</strong></a>--%>
<%--</div>--%>
</body>
</html>

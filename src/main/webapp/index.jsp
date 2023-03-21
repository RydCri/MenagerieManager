<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>

        <c:forEach items="ads" var="ea">
        <div>${ads}</div>
                <form method="post" action="/ads/delete">
                    <input type="hidden" name="id" value="${ads.id}">
                        <c:if test="${sessionScope.user != null and ads.userId == sessionScope.user.id}">
                            <button type="submit" class="deleteBtn">Delete Button</button>
                                </c:if>
                            </form>
        </c:forEach>
    </div>
</body>
</html>

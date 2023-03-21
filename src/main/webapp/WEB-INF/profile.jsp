<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/userNavbar.jsp"/>
<jsp:include page="/WEB-INF/partials/style.jsp"/>

    <div class="card" style="width: 18rem;">
        <c:if test='${sessionScope.user.gender eq "male"}'>
            <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087745157652287548/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_457a53d3-02cb-4811-97fd-cec38a6cea1f.png" class="card-img-top" alt="stock profile image">
        </c:if>
        <c:if test='${sessionScope.user.gender eq "female"}'>
            <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087745176983842886/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_fc43dbcd-5b70-4fb5-b5c0-9c38eeff218d.png" class="card-img-top" alt="stock profile image">
        </c:if>
        <c:if test='${sessionScope.user.gender eq "unknown"}'>
            <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087748480698683512/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_0e2a4b32-c20f-4335-98ce-8905675de305.png" class="card-img-top" alt="stock profile image">
        </c:if>

        <div class="card-body">
            <h5 class="card-title"><h2>Welcome, ${sessionScope.user.username}!</h2></h5>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item"><h4>${sessionScope.user.email}!</h4></li>
        </ul>
        <div class="card-body">
            <a href="/edit-profile" class="card-link">Edit Profile</a>
            <a href="/ads">Your Ads!</a>
        </div>
    </div>


<c:forEach var="userAd" items="${userAds}">
    <div class="ms-2 col-6">
        <h2>${userAd.title}</h2>
        <img src="${userAd.img_url}">
        <p>${userAd.description}</p>
        <hr>
    </div>
</c:forEach>


</body>
</html>


<%--//TODO The profile page should display the username and email of the logged-in user and a list of links to all the ads a user has created in the AdLister.&ndash;%&gt;--%>

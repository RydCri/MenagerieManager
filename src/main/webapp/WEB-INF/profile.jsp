<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>${sessionScope.user.username}'s Profile</title>

    <jsp:include page="/WEB-INF/partials/favicon.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/cursors.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/menagerieStyle.jsp"></jsp:include>

</head>
<body>

    <nav class="navbar navbar-default" style="width:100%;position:fixed;z-index:99;flex-direction: row!important;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="text-shadow: 1px 1px 0 magenta;font-family: 'Balsamiq Sans', Charm, serif!important;" href="/ads">Menagerie</a>
            </div>
            <ul class="navUl">
                <c:if test="${sessionScope.user != null}">
                    <li><a href="#" id="profileLink">Logged in: ${sessionScope.user.username}<svg width="28px" height="28px" viewBox="0 0 64 64" id="wizard" xmlns="http://www.w3.org/2000/svg"><title>wizard</title><line x1="7" y1="17" x2="7" y2="19" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="7" y1="23" x2="7" y2="25" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M53.15,49.3A8.754,8.754,0,0,1,56,55.778V61H13V55.778A8.76,8.76,0,0,1,16.2,49" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="28.216" y1="60.569" x2="31.24" y2="54.52" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="35" y1="55" x2="32.216" y2="60.569" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="3" y1="21" x2="5" y2="21" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><line x1="9" y1="21" x2="11" y2="21" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="55.5" cy="6.5" r="2.5" style="fill:#13FFD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="13.984" cy="6.603" r="1.069"/><path d="M47.247,44.161C54.284,43.115,59,41.2,59,39" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M11,39c0,2.09,4.273,3.93,10.753,5" style="fill:none;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M19.6,34.4C14.342,35.5,11,37.152,11,39v4.236A5.763,5.763,0,0,0,16.764,49L34,55l19.236-6A5.763,5.763,0,0,0,59,43.236V39c0-1.968-3.79-3.715-9.645-4.809" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="5.984" cy="30.603" r="1.069"/><path d="M48,13V10.143A6.143,6.143,0,0,0,41.857,4H27.143A6.143,6.143,0,0,0,21,10.143V13" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M41.972,13H48a4,4,0,0,1,4,4h0a4,4,0,0,1-4,4H21a4,4,0,0,1-4-4h0a4,4,0,0,1,4-4H31.079" style="fill:#5D3FD3;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><circle cx="39.5" cy="25.5" r="1.136"/><circle cx="29.5" cy="25.5" r="1.136"/><path d="M20,21V36.5a14.5,14.5,0,0,0,29,0V21.273" style="fill:#ffffff;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><path d="M49,32H43.875a6.472,6.472,0,0,0-5.219-2.2A5.2,5.2,0,0,0,35,31.974,5.2,5.2,0,0,0,31.344,29.8,6.472,6.472,0,0,0,26.125,32H20" style="fill:#ffffff;stroke:#000000;stroke-linejoin:round;stroke-width:2px"/><line x1="33" y1="36" x2="37" y2="36" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/><rect x="32" y="10" width="5" height="5" transform="translate(1.266 28.056) rotate(-45)" style="fill:#800020;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px"/></svg></a></li>
                    <div id="profileHidden" class="row col-sm-8">
                        <div class="card" style="background-image: linear-gradient(90deg, #FFBF00, #00ffe7a1)!important;">
                            <c:if test='${sessionScope.user.gender eq "male"}'>
                                <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087745157652287548/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_457a53d3-02cb-4811-97fd-cec38a6cea1f.png" class="card-img-top" alt="stock profile image">
                            </c:if>
                            <c:if test='${sessionScope.user.gender eq "female"}'>
                                <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087745176983842886/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_fc43dbcd-5b70-4fb5-b5c0-9c38eeff218d.png" class="card-img-top" alt="stock profile image">
                            </c:if>
                            <c:if test='${sessionScope.user.gender eq "unknown"}'>
                                <img src="https://cdn.discordapp.com/attachments/1008571132938555432/1087748480698683512/Meat-Maniac_blank_profile_picture_of_a_mysterious_person_0e2a4b32-c20f-4335-98ce-8905675de305.png" class="card-img-top" alt="stock profile image">
                            </c:if>

                            <div class="card-body" style="background:transparent;">
                                <h5 class="card-title"><h2>Welcome, ${sessionScope.user.username}!</h2></h5>
                            </div>
                            <ul class="list-group list-group-flush" style="background: transparent;">
                                <li class="list-group-item"><h4 style="color: #FFBF00;text-shadow: none;">User ID: ${sessionScope.user.id}</h4></li>
                                <li class="list-group-item"><h4 style="color: #FFBF00;text-shadow: none;">G: ${sessionScope.user.gender}</h4></li>
                                <li class="list-group-item"><h5 style="color: #FFBF00;text-shadow: none;">${sessionScope.user.email}</h5></li>
                                <li>
                                    <div class="card-body">
                                        <a href="/edit-profile" class="card-link" style="color: #005bffe6!important;font-weight: bold;">Edit Profile</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <li><a href="/ads/create" class="">Create Ad</a></li>
                    <li><a href="/logout" class="">Logout</a></li>
                </c:if>
                <c:if test="${sessionScope.user == null}">
                    <li><a href="/login" class="">Login</a></li>
                </c:if>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>


    <div class="container"> <!--Ads go here -->
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <c:if test="${sessionScope.user != null and ad.userId == sessionScope.user.id}">
                    <div class="col-sm-4" style="margin-bottom: 5em">
                        <div class="hero-container">
                            <div class="main-container">
                                <div class="delete-container">
                                    <a href="/adDetails"><img src="${ad.img_url}" class="poster" /></a>
                                    <form method="post" action="/ads/delete">
                                        <input type="hidden" name="id" value="${ad.id}">
                                        <button class="ticket__buy-btn" type="submit" style="scale: .5; margin-bottom: 0; background: orangered;">Delete Post</button>
                                    </form>
                                </div>
                                <div class="edit_content">
                                    <form method="get" action="/ads/edit">
                                        <input type="hidden" name="id" value="${ad.id}">
                                        <button type="submit" class="ticket__buy-btn" style="scale: .5; margin-bottom: 0;">Edit Post</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>

    <script src="../js/jquery.js"></script>
    <script>
        $('#profileLink').on('click',function(){
            $('#profileHidden').show();
        });
        $('#profileHidden').on('click',function(){
            $(this).hide();
        })
    </script>

</body>
</html>

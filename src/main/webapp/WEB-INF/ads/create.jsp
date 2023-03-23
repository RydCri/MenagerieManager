<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Compiled and minified CSS -->
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">--%>
    <jsp:include page="/WEB-INF/partials/favicon.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/cursors.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/menagerieStyle.jsp"></jsp:include>

</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="text-shadow: 1px 1px 0 magenta;font-family: 'Balsamiq Sans', Charm, serif!important;" href="/ads">Menagerie</a>
            </div>
            <ul class="nav navbar-nav navbar-right flex-row mr-1">
                <li><a href="/profile" style="margin-right: 10px">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1 class="valign-wrapper center-align">Welcome ${sessionScope.user.username}, create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group white-text col-12">
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
                <input id="price" name="price" class="form-control white-text" type="text" placeholder="$##,###,###.##">
            </div>
            <div class="form-group">
                <label for="img_url">IMG URL</label>
                <textarea id="img_url" name="img_url" class="form-control" type="url"></textarea>
            </div>
            <button class="btn waves-effect waves-light right align-right blue lighten-3" style="background: cyan!important;" type="submit" name="action">Submit
            </button>
        </form>
    </div>

    <!--materialize js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
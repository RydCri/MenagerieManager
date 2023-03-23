<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Edited Profile</title>
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
    <h1>Edit your profile ${sessionScope.user.username}!</h1>

    <form action="/edit-profile" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" class="form-control">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="unknown">Other</option>
            </select>
        </div>
        <br>
        <input type="submit" class="btn btn-primary btn-block deep-purple lighten-1">
    </form>

    <hr>

    <button data-target="modal1" class="btn modal-trigger deep-purple lighten-1  hoverable">Delete Profile</button>

    <div id="modal1" class="modal modal-fixed-footer deep-purple lighten-4 blue-grey-text text-darken-4" style="max-height: 20em">
        <div class="modal-content deep-purple lighten-4">
            <h4 style="text-align: center">Are you sure you wish to delete your profile?</h4>
            <div class="modal-footer deep-purple lighten-4" id="delete">
                <form action="profile">
                    <button type="submit" class="modal-action modal-close waves-effect waves-red btn-flat hoverable">No</button>
                </form>
                <form method="post" action="/deleteProfile">
                    <input type="hidden" name="id" value="${sessionScope.user.id}">
                    <c:if test="${sessionScope.user != null}">
                        <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat hoverable">Yes</button>
                    </c:if>
                </form>
            </div>
            <h4 style="text-align: center; color: red"><strong>This action will also delete all of your posted ads...</strong></h4>
        </div>
    </div>
</div>

<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
    <script>
        (function ($) {
            $(function () {
            //initialize all modals
            $('.modal').modal();

            //now you can open modal from code
            // $('#modal1').modal('open');

            //or by click on trigger
            $('.trigger-modal').modal();

            }); // end of document ready
        })(jQuery); // end of jQuery name space
</script>

</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>

  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>

  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/userNavbar.jsp" />

<div class="container">
  <h1>Edit your profile below ${sessionScope.user.username}!</h1>
<%--TODO ADD IMAGE UPLOAD--%>
<%--TODO CHANGE CONTACT INFO--%>
<%--TODO ADD STATUS {LOOKING TO ADOPT/FOSTER/SALE}--%>


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
    <input type="submit" class="btn btn-primary btn-block">
  </form>

<%--      <form method="post" action="/deleteProfile">--%>
<%--        <input type="hidden" name="id" value="${sessionScope.user.id}">--%>
<%--        <c:if test="${sessionScope.user != null}">--%>
<%--          <button class="" type="submit">Delete Profile</button>--%>
<%--        </c:if>--%>
<%--      </form>--%>

  <!-- Modal Trigger -->
  <button data-target="modal1" class="btn modal-trigger">Modal</button>
  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Modal Header</h4>
      <p>A bunch of text</p>
    </div>
    <div class="modal-footer">
      <button class="modal-action modal-close waves-effect waves-red btn-flat" ><a href="profile">Disagree</a></button>
      <form action="/deleteProfile" method="post">
        <input type="hidden" name="id" value="${sessionScope.user.id}">
        <c:if test="${sessionScope.user != null}">
<%--          <button class="" type="submit">Delete Profile</button>--%>
          <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</button>
        </c:if>
      </form>
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

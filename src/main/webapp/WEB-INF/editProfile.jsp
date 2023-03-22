<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>
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

      <form method="post" action="/deleteProfile">
        <input type="hidden" name="id" value="${sessionScope.user.id}">
        <c:if test="${sessionScope.user != null}">
          <button class="" type="submit">Delete Profile</button>
        </c:if>
      </form>

    </div>



</body>
</html>

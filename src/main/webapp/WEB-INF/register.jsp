<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Register</title>

    <jsp:include page="/WEB-INF/partials/favicon.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/partials/cursors.jsp"></jsp:include>

    <style>
        :root {
            --clr-one: rgb(255, 20, 147);
            --clr-two: rgb(127, 255, 0);
            --clr-three: rgb(138, 43, 226);
            --clr-bg: #1d1e22;
        }
        @keyframes gradientAnime {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        .container {
            border-radius: 25px;
            background: black;
            top: 104px;
            left: 60px;
            position: absolute;
            animation: boxShadow 6s linear infinite;
        }
        @keyframes boxShadow {
            0% {
                box-shadow: rgba(38, 57, 77,.6) 0px 20px 30px -10px,inset 0 0 0.5em 0 var(--clr-one), 0 0 0.5em .2em var(--clr-one);
            }
            50% {
                box-shadow: rgba(58, 157, 177,.6) 20px 50px 30px -10px,inset 0 2px 0.5em 0 var(--clr-three), 0 0 0.5em .4em var(--clr-three);
            }
            100% {
                box-shadow: rgba(38, 57, 77,.6) 0px 20px 30px -10px,inset 0 0 0.5em 0 var(--clr-one), 0 0 0.5em .2em var(--clr-one);
            }
        }
        body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            font-family: Damascus sans-serif;
            color:white;
            text-shadow: 1px 1px 3px black;
            animation: gradientAnime 25s linear infinite;    }
        h1 h2{
            text-align: center;
        }
        .navbar {
            background:black;
        }
        .navbar a {
            text-shadow: none;
            color: white !important;
            text-decoration: none;
        }
        .btn {
            text-shadow: 1px 1px 0 black;
            margin-top: 10px;
        }
    </style>

</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="text-shadow: 1px 1px 0 magenta;font-family: 'Balsamiq Sans', Charm, serif!important;" href="/ads">Menagerie</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login">Login</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
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
    </div>

</body>
</html>

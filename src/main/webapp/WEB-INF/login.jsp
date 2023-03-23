<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Login~</title>

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
        </div>
    </nav>

    <div class="container">
        <h1>Please Login</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Login">
        </form>

        <h4>New user?<a style="text-decoration: none;" href="/register"> Sign up!</a></h4>
    </div>

</body>
</html>

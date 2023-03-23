<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>

    #profileHidden {
        display: none;
        width: 18rem;
        z-index:20;
        position: fixed;
    }

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

    .navUl a,li{
        color:white;
        list-style: none;
        text-decoration: none;
        margin-right: 1em!important;
    }

    .navUl {
        display: flex;
        flex-direction: row!important;
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

    #delete{
        display: flex;
        justify-content: center;
    }

    .hero-container {
        margin: auto;
        display: flex;
    }

    .main-container {
        height: 263px;
        position: relative;
        margin: 10px 10px 10px 15px;
    }

    .poster-container {
        width: 250px;
        position: absolute;
        top: 10px;
        left:10px;
        z-index:10;
        border-radius: 24px;
    }

    .poster {
        height: 250px;
        width: 100%;
        box-shadow: 3px 1px 11px 0px rgba(0, 200, 0, 0.6), -3px -1px 11px 0px rgba(200,0,0,.6);
        border-radius: 35px;
        z-index: 9;
    }

    .ticket-container {
        background: transparent;
        width: 270px;
        padding-top: -10px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: end;
        position: absolute;
        border-radius: 33px;
        position: absolute;
        top: 0px;
        left: -6px;
        box-shadow: 0 5px 2px 0 rgba(0, 0, 0, 0.6);
        opacity: 0;
    }

    .main-container:hover .ticket-container {
        opacity: 1;
        animation: bounceIn 0.6s linear;
    }

    @keyframes bounceIn {
        0%,
        20%,
        40%,
        60%,
        80%,
        to {
            -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
        }
        0% {
            opacity: 0;
            -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3);
        }
        20% {
            -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03);
        }
        40% {
            -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9);
        }
        60% {
            opacity: 1;
            -webkit-transform: scale3d(1.01, 1.01, 1.01);
            transform: scale3d(1.01, 1.01, 1.01);
        }
        80% {
            -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97);
        }
        to {
            opacity: 1;
            -webkit-transform: scaleX(1);
            transform: scaleX(1);
        }
    }

    .ticket__content {
        text-align: center;
    }

    .ticket__movie-title {
        text-transform: uppercase;
        color:lightskyblue;
        margin-bottom: 5px;
    }

    .ticket__movie-slogan {
        color: #94f4ee;
        font-size: 1rem;
        margin-bottom: 20px;
        list-style: none;
    }

    .ticket__current-price {
        color: #fc3c3c;
        font-size: 1.4rem;
        font-weight: bold;
    }

    .ticket__buy-btn {
        cursor: pointer;
        width: 100%;
        background: #864e9f;
        color: white;
        padding: 15px 0;
        font-size: 1rem;
        font-weight: bold;
        text-transform: uppercase;
        border: 0;
        opacity: 90%;
    }

    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }

    .card {
        width: 30rem;
    }

</style>
<style>
    html {
        background-image: linear-gradient(90deg,midnightblue,mediumvioletred);
    }
    body {
        font-family: Damascus sans-serif;
        color:white;
        text-shadow: 1px 1px 3px black;
        background-image: linear-gradient(90deg,midnightblue,mediumvioletred);
  }
  h1 h2{
    text-align: center;
  }
  .navbar {
      background:black;
  }
  .navbar a {
      text-shadow: none;
      color: white !important;
  }

  .card {
      width: 30rem;
  }

  .Male {
      color:blue;
  }
  .Female {
      color:deeppink;
  }
  .NA {
      color: #8889;
  }
  .idk {
      color: forestgreen;
  }

    /*ad cards*/
    @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap");

    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }

    body {
        background: #457fb4;
        font-family: "Roboto", sans-serif;
        display: flex;
        height: 100vh;
    }

    .hero-container {
        margin: auto;
        display: flex;
    }

    .main-container {
        width: 270px;
        height: 540px;
        position: relative;
        margin: 0 20px;
    }

    .poster-container {
        width: 230px;
        position: absolute;
        top: 0;
        left: 20px;
        z-index: 9999;
    }

    .poster {
        width: 100%;
        box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.6);
    }

    .ticket-container {
        background: #fff;
        width: 270px;
        padding-top: 230px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: end;
        border-radius: 5px;
        position: absolute;
        top: 20px;
        box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.6);
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

    /* @keyframes bounce {
      50% {
        opacity: 1;
        transform: scale(1.1);
      }

      100% {
        opacity: 1;
        transform: scale(1);
      }
    } */


    .ticket__content {
        width: 100%;
        padding: 0 15px;
        position: relative;
        bottom: 0;
        text-align: center;
    }

    .ticket__movie-title {
        text-transform: uppercase;
        margin-bottom: 5px;
    }

    .ticket__movie-slogan {
        color: #999;
        font-size: 0.9rem;
        margin-bottom: 20px;
    }

    .ticket__current-price {
        color: #69c982;
        font-size: 1.4rem;
        font-weight: bold;
    }

    #ticket__buy-btn {
        cursor: pointer;
        width: 100%;
        background: #2f2f2f;
        color: white;
        padding: 15px 0;
        font-size: 1rem;
        font-weight: bold;
        text-transform: uppercase;
        border: 0;
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px;
    }





</style>
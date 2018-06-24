<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 15.06.2018
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <title>401 - unauthorized</title>

    <style>
        * {
            padding: 0;
            margin: 0;
        }

        body {
            background-image: url("/public/img/error/errorPage.jpeg");
        }

        #main {
            margin-top: 50px;
            text-align: center;
            font-size: 200px;
            text-shadow: 10px 10px #F9BB3D;
            font-family: Chiller;
        }

        .error {

            text-align: center;
            font-size: 80px;
            text-shadow: 3px 3px #F9BB3D;
            font-family: "Fira Code";

        }

        img {
            display: block;
            margin-top: 100px;
            margin-left: auto;
            margin-right: auto
        }
    </style>
</head>
<body>
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <p id="main">401</p>
        <p class="error">You should not be here!</p>
        <a href="/newspaper/homepage"><img src="/public/img/logos/logoHome.png" title="homepage"></a>
    </div>
    <div class="col-sm-3"></div>
</div>
</body>
</html>

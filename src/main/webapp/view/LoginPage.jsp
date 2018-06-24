<%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 12.06.2018
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Login</title>
    <link rel="icon" type="image/png" href="/public/img/logos/iconUp.png">
    <link rel="stylesheet" type="text/css" href="/view/style/LoginPage.css">

</head>
<body>
<div id="container" class="col-md-12">
    <!--koniec div gorna czesc kontenera -->
    <div id="content">
        <div id="middle_part_container">
            <div id="text">
                <form action="j_security_check" method="post">
                    <div class="imgcontainer">
                        <img src="/public/img/logos/login_icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="container">
                        <label><b>Username</b></label>
                        <input type="text" placeholder="Username" name="j_username" required>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Password" name="j_password" required>

                        <button type="submit" value="login">Login</button>
                        <p id="error_1">${error}</p>
                    </div>
                </form>
            </div>
        </div>
        <!-- KONIEC ŚRODKOWEJ CZĘŚCI-->
        <div id="down_part_container">
            <a id="mail" href="/newspaper/homepage"> <img id="last_pic" src="/public/img/logos/back.png"></a>
        </div>
    </div>
</div>
<!-- koniec div kontener-->

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 12.06.2018
  Time: 18:50
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
    <title>ArticlePage</title>
    <link rel="icon" type="image/png" href="/public/img/logos/iconUp.png">
    <link rel="stylesheet" type="text/css" href="/view/style/MailPage.css">
</head>

<body>
<div id="container">
    <div id="content">
        <div id="middle_part_container">
            <div id="text">
                <div class="container1">
                    <h3>Send us something</h3>

                    <form action="/newspaper/mail" method="post">
                        <label for="email">From who?</label>
                        <input type="text" id="email" name="clientEmail" placeholder="Your email">

                        <label for="topic">Topic </label>
                        <input type="text" id="topic" name="mainTopic" placeholder="Topic...">

                        <label for="subject">Subject</label>
                        <textarea id="subject" name="subject" placeholder="Write something.."
                                  style="height:200px"></textarea>

                        <input type="submit" value="Submit" onclick="myFunction()">

                        <script>
                            function myFunction() {
                                confirm("Email send successfully :)")
                            }
                        </script>
                    </form>
                </div>
            </div>
        </div>
        <div id="down_part_container">
            <a id="mail" href="/newspaper/homepage"> <img id="last_pic" src="/public/img/logos/back.png"></a>
        </div>
    </div>
</div>
</body>
</html>

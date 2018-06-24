<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 13.06.2018
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
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
    <link rel="stylesheet" type="text/css" href="/view/style/AdminPage.css">
</head>
<body>
<div id="container">

    <div id="top_part_container">
        <div id="upper_menu">
            <ul id="main_um">
                <li><a href="/newspaper/admin/1"><img src="/public/img/admin/upload.png"
                                                      title="Upload new article"></a></li>
                <li><a href="/newspaper/admin/2"><img src="/public/img/admin/sale_tag.png"
                                                      title="Set sale"></a></li>
                <li><a href="/newspaper/admin/3"><img src="/public/img/admin/like.png"
                                                      title="Show statistic likes"></a></li>
                <li><a href="/newspaper/homepage"><img src="/public/img/admin/close.png"
                                                       title="Log out from admin_mode"></a></li>
            </ul>
        </div>
    </div>
    <!--koniec div gorna czesc kontenera -->
    <div id="content">
        <div id="middle_part_container">
            <div id="text">
                <div class="container1">
                    <h3>Upload new article</h3>
                    <form action="/newspaper/mail" method="post">
                        <label for="topic">Title</label>
                        <input type="text" id="topic" name="title" placeholder="Title...">

                        <label>Content</label>
                        <textarea id="contentAdd" name="content" placeholder="New article..."
                                  style="height:200px"></textarea

                        ><label>Add path to your photo</label>
                        <input type="text" id="url" name="url" placeholder="Add url...">

                        <input type="submit" value="Add" onclick="myFunction()">

                        <script>
                            function myFunction() {
                                confirm("Added new article successfully")
                            }
                        </script>
                    </form>
                </div>
            </div>
        </div>
        <!-- KONIEC ŚRODKOWEJ CZĘŚCI-->
    </div>
</div>
<!-- koniec div kontener-->
</body>
</html>

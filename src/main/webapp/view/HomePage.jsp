<%@ page import="java.net.URL" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONTokener" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 08.06.2018
  Time: 18:44
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
    <title>HomePage</title>
    <link rel="icon" type="image/png" href="/public/img/logos/iconUp.png">
    <link rel="stylesheet" type="text/css" href="/view/style/HomePage.css">
</head>

<body>
<div id="side_text" >
    <h1 id="live"><strong>LIVE NEWS</strong></h1>
    <div class="liveWindow">
        <h2><a href=<%=request.getAttribute("liveUrl")%>><%=request.getAttribute("liveTit")%>
        </a></h2>
        <p><%=request.getAttribute("liveDes")%>
        </p>
    </div>
    <div class="liveWindow">
        <h2><a href=<%=request.getAttribute("liveUrl2")%>><%=request.getAttribute("liveTit2")%>
        </a></h2>
        <p><%=request.getAttribute("liveDes2")%>
        </p>
    </div>
    <div class="liveWindow">
        <h2><a href=<%=request.getAttribute("liveUrl3")%>><%=request.getAttribute("liveTit3")%>
        </a></h2>
        <p><%=request.getAttribute("liveDes3")%>
        </p>
    </div>
    <br/>
    <a href="https://newsapi.org/" style="color: #363408">newsapi.org</a>
</div>
<div id="container" class="col-md-8">
    <div id="top_part_container">
        <div id="upper_menu">
            <ul id="main_um" class="first_floor">
                <li><a href="/newspaper/homepage"><img src="/public/img/logos/logoHome.png"
                                                       title="Home"></a></li>
                <li><a href="https://edition.cnn.com/politics"><img src="/public/img/logos/logoPolitical.png"
                                                                    title="Political news"></a></li>
                <li><a href="https://www.bbc.com/news/business"><img src="/public/img/logos/logoBusiness.png"
                                                                     title="Business news"></a></li>
                <li style="padding-left: 50px;"><img src="/public/img/logos/logoWorld1.png"
                                                     title="News from around the world">
                    <ul class="second_floor">
                        <li><a href="https://www.bbc.com/news/topics/cmj34zmwxe3t/new-york"><img
                                src="/public/img/city/NY.png">New York</a></li>
                        <li style="margin-bottom: 50px"><a href="https://www.bbc.com/news/england/london"><img
                                src="/public/img/city/London.png">London</a></li>
                        <li><a href="https://www.bbc.com/news/topics/cxw7q5zm562t/paris"><img
                                src="/public/img/city/Paris.png">Paris</a></li>
                        <li><a href="https://www.bbc.com/news/topics/cl866ry9w7vt/sydney"><img
                                src="/public/img/city/Sydney.png">Sydney</a></li>
                    </ul>
                </li>
                <li style="padding-left: 50px;">
                    <a href="/newspaper/loginAdmin"><img src="/public/img/logos/admin.png" title="Admin access"></a>
                </li>
            </ul>
        </div>
    </div>
    <!--koniec div gorna czesc kontenera -->
    <div id="content">
        <div id="middle_part_container">
            <div id="text">
                <b:set var="articles" value="${articles}"/>
                <div id="main_news" class="polaroid">
                    <a href="/newspaper/ArticleController/0"><img src="${articles[0].imgUrl}" id="middleNewsMain">
                        <p class="caption">${articles[0].title}</p></a>
                </div>
                <div class="polaroid" id="img1">
                    <a href="/newspaper/ArticleController/1"><img src="${articles[1].imgUrl}" class="middleNews">
                        <p class="caption">${articles[1].title}</p></a>
                </div>
                <div class="polaroid" id="img2">
                    <a href="/newspaper/ArticleController/2"><img src="${articles[2].imgUrl}" class="middleNews">
                        <p class="caption">${articles[2].title}</p></a>
                </div>
                <div class="polaroid" id="img3">
                    <a href="/newspaper/ArticleController/3"><img src="${articles[3].imgUrl}" class="middleNews">
                        <p class="caption">${articles[3].title}</p></a>
                </div>
                <div class="polaroid" id="img4">
                    <a href="/newspaper/ArticleController/4"><img src="${articles[4].imgUrl}" class="middleNews">
                        <p class="caption">${articles[4].title}</p></a>
                </div>
            </div>
        </div>
        <!-- KONIEC ŚRODKOWEJ CZĘŚCI-->
        <div id="down_part_container">
            <img id="last_pic" src="/public/img/logos/email.png"><a id="mail" href="/newspaper/mail">
            tell us something</a>
        </div>
    </div>
</div>
<!-- koniec div kontener-->
</body>
</html>

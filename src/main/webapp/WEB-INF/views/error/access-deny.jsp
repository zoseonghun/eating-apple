<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/access-deny.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap">
    <style>

    </style>
    <%--    <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->--%>
</head>

<body>
    <!-- START PAGE SOURCE -->
    <div id="shell">
        <%--  헤더--%>
        <%@ include file="../include/header.jsp" %>
        <%--  헤더 end--%>
        <div id="sub-navigation">

        </div>
    </div>
    <div id="main">
        <div id="content">
            <div class="error-container">
                <div class="error-number pulse"><img src="/assets/img/apple.png" alt=""></div>
                <p class="error-message">"Sorry, the page you're looking for cannot be found." </p>
            </div>

        </div>
        <div class="cl"></div>
    </div>

    <!-- footer -->
    <%@ include file="../include/footer.jsp" %>
    <!-- footer end -->






</body>
</html>
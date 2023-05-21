<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/sign-in.css" type="text/css" media="all"/>
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
        <div id="container">
            <div class="container sign-in">
                <div class="login-box">
                    <h2>Login</h2>
                    <form action="/user/sign-in" name="sign-in" method="post">
                        <div class="user-box">
                            <input type="id" name="userId" required="required">
                            <label>Your Id</label>
                        </div>
                        <div class="user-box">
                            <input type="password" name="userPassword" required="required" >
                            <label>Your Password</label>
                        </div>
                        <a id="custom-login-btn" href="/kakao/login">
                            <img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg">
                        </a>
                        <button type="submit">
                            Log in
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="cl"></div>
</div>

<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end-->
</div>
<!-- END PAGE SOURCE -->




</body>
</html>
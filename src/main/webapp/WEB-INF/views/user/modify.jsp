<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/modify.css" type="text/css" media="all"/>

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
            <h2>회원 정보 수정</h2>
            <form action="/user/modify" method="POST">
<%--                <input type="hidden" name="userNum" value="">--%>

               <label for="signId">아이디:</label>
               <input type="text" id="signId" name="userId" value="${login.suserid}" readonly>

                <label for="signPassword">비밀번호:</label>
                <input type="password" id="signPassword" name="userPassword" required>

<%--                <label for="checkPassword">비밀번호 확인:</label>--%>
<%--                <input type="password" id="checkPassword" name="rePassword" required>--%>

                <label for="signEmail">이메일:</label>
                <input type="email" id="signEmail" name="userEmail" required>

<%--                <label for="signAge">나이:</label>--%>
<%--                <input type="text" id="signAge" name="userAge" value="" disabled>--%>

<%--                <label for="signGender">성별:</label>--%>
<%--                <input type="text" id="signGender" name="userGender" value="" disabled>--%>


                <input type="submit" value="수정완료" id="modifyBtn">
            </form>
        </div>

    </div>
    <div class="cl">&nbsp;</div>
</div>


<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end -->



</body>
</html>
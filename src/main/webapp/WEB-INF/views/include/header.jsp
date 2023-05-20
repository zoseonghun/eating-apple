<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="header">
    <h1 id="logo"><a href="/movies/list">MovieHunter</a></h1>
    <div id="navigation">
        <ul>
            <!-- <li><a class="active" href="/">HOME</a></li> -->
            <li><a href="/movies/list">MOVIES</a></li>



            <c:if test="${login == null}">
                <li><a href="/user/login">로그인</a></li>
                <li><a href="/user/sign-up">회원가입</a></li>
            </c:if>

            <c:if test="${login != null}">
                <li><a href="#">마이페이지</a></li>
            </c:if>

        </ul>
    </div>
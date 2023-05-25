<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="header">
    <!-- 로고 추가 수정 -->
    <h1 id="logo"><a href="/movies/list"><img src="/assets/img/logo4.png" alt=""></a></h1>
    <!-- 로고 추가 수정 -->
    <div id="navigation">
        <ul>
            <c:if test="${login == null}">

                <li class="header-li header-li-home"><a href="/movies/list">HOME</a></li>
                <li class="header-li"><a href="/user/login">로그인</a></li>
                <li class="header-li"><a href="/user/sign-up">회원가입</a></li>
            </c:if>


            <c:if test="${login != null && login.suserid != 'admin'}">
                <li class="header-user-profile-image"><img src="${login.sprofileimage}" alt=""></li>
                <li class="header-li header-li-user"><p>${login.suserid}님 환영 합니다!!</p></li>
                <li class="header-li header-li-home"><a href="/movies/list">HOME</a></li>
                <li class="header-li"><a href="/user/sign-out">로그아웃</a></li>
                <li class="header-li"><a href="/user/mypage">마이페이지</a></li>
                <li class="header-li"><a href="/user/modify">회원정보수정</a></li>
            </c:if>

            <c:if test="${login != null && login.suserid == 'admin'}">
                <li class="header-user-profile-image"><img src="/assets/img/admin.png" alt=""></li>
                <li class="header-li header-li-user"><p>관리자 계정입니다</p></li>
                <li class="header-li header-li-home"><a href="/movies/list">HOME</a></li>
                <li class="header-li"><a href="/user/sign-out">로그아웃</a></li>
                <li class="header-li"><a href="/user/admin">영화등록</a></li>
            </c:if>

        </ul>
    </div>
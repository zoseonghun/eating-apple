<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>EATINGAPPLE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <div id="header">
        <h1 id="logo"><a href="#">MovieHunter</a></h1>
        <div id="navigation">
            <ul>
                <li><a class="active" href="#">HOME</a></li>
                <li><a href="#">MOVIE</a></li>
                <li><a href="#">로그인</a></li>
            </ul>
        </div>
        <div id="sub-navigation"></div>
    </div>
    <div id="main">
        <div id="content">
            <div class="wrap wd668">
                <div class="container">
                    <div class="form_txtInput">
                        <h1 class="sub_tit_txt">회원 정보 수정</h1>
                        <div class="join_form">
                            <form action="updateUserInfo.jsp" method="post">
                                <table>
                                    <colgroup>
                                        <col width="30%" />
                                        <col width="auto" />
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th><span>아이디</span></th>
                                            <td><span><c:out value="${}" /></span></td>
                                        </tr>
                                        <tr>
                                            <th><span>비밀번호</span></th>
                                            <td><input type="password" name="password" placeholder="변경할 비밀번호를 입력해주세요." /></td>
                                        </tr>
                                        <tr>
                                            <th><span>비밀번호 확인</span></th>
                                            <td><input type="password" name="confirmPassword" placeholder="비밀번호를 한번 더 입력해주세요." /></td>
                                        </tr>
                                        <tr class="email">
                                            <th><span>이메일</span></th>
                                            <td>
                                                <input type="text" name="email" class="email" value="<c:out value="${user.email}" />" />
                                                <span class="mar10">@</span>
                                                <input type="text" name="email2" class="email email2" value="<c:out value="${user.email2}" />" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span>성별</span></th>
                                            <td><span><c:out value="${}" /></span></td>
                                        </tr>
                                        <tr>
                                            <th><span>나이</span></th>
                                            <td><span><c:out value="${}" /></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="btn_wrap">
                                    <input type="submit" value="수정완료" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer">
        <p class="lf">Copyright &copy; 2010
            <a href="#">SiteName</a> - All Rights Reserved
        </p>
        <p class="rf">Design by
            <a href="http://chocotemplates.com/">ChocoTemplates.com</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</body>
</html
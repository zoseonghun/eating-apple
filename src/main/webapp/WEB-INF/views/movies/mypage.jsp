<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>


<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/mypage.css" type="text/css" media="all" />
    <style>
        #content {
            border: 1px solid #fff;
            height: 700px;
        }

    </style>
</head>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">
    <!-- header -->
    <%@ include file="../include/header.jsp" %>
    <div id="sub-navigation">
        <ul>
            <!-- 장르 카테고리 -->
            <li><a href="#"></a></li>
        </ul>
        <div id="search">
            <form action="#" method="get" accept-charset="utf-8">
                <label for="search-field">SEARCH</label>
                <input type="text" name="search field" value="Enter search here" id="search-field"
                       class="blink search-field" />
                <input type="submit" value="GO!" class="search-button" />
            </form>
        </div>
    </div>
</div>
<!-- header end -->


<!-- main -->
    <div id="main">
        <div id="content">
            <!-- 마이페이지 -->
            <div id="menu" class="popup_menu" style="width: 250px">
                <div class="m_acco">
                    <a class="menuList" href="#">마이페이지</a>
                    <a class="menuList" href="#">정보 수정</a>
                    <a class="menuList" href="#">내가 쓴 글</a>
                    <a class="menuList" href="#">내가 찜한 목록보기</a>
                </div>
            </div>

            <!-- 회원 정보 수정 -->
            <div class="wrap wd668">
                <div class="container">
                    <div class="form_txtInput">
                        <h1 class="sub_tit_txt">회원 정보 수정</h1>
                        <div class="join_form">
                            <table>
                                <colgroup>
                                    <col width="30%" />
                                    <col width="auto" />
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th><span>아이디</span></th>
                                    <td><input type="text"></td>
                                </tr>
                                <tr>
                                    <th><span>비밀번호</span></th>
                                    <td><input type="text" placeholder="변경할 비밀번호를 입력해주세요."></td>
                                </tr>
                                <tr>
                                    <th><span>비밀번호 확인</span></th>
                                    <td><input type="text" placeholder="비밀번호를 한번 더 입력해주세요."></td>
                                </tr>
                                <tr class="email">
                                    <th><span>이메일</span></th>
                                    <td>
                                        <input type="text" class="email" placeholder=""><span
                                            class="mar10">@</span>
                                        <input type="text" class="email email2" placeholder="">
                                    </td>
                                </tr>
                                <tr>
                                    <th><span>성별</span></th>
                                    <td><input type="text" placeholder=""></td>
                                </tr>
                                <tr>
                                    <th><span>나이</span></th>
                                    <td><input type="text" placeholder=""></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="btn_wrap">
                                <a href="#">수정완료</a>
                            </div>
                        </div> <!-- join_form -->
                    </div><!-- form_txtInput -->
                </div> <!-- container -->
            </div> <!-- wrap -->
        </div><!-- content -->
        <div class="cl">&nbsp;</div>
    </div>
<!-- main end -->



<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end-->
</div>
<!— END PAGE SOURCE —>

</body>

</html>
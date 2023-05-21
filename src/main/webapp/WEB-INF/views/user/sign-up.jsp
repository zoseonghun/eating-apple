<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/sign-up.css" type="text/css" media="all"/>
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
            <div class="container sign-up">

                    <form action="/user/sign-up" name="signup" method="POST" enctype="multipart/form-data">
                    <div class="profile">
                        <div class="thumbnail-box">
                            <img src="/assets/img/image-add.png" alt="프로필 썸네일">
                        </div>
                        <label for="profile-img">프로필 사진</label>
                        <input type="file" id="profile-img" name="profileImage" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" id="id" name="userId" placeholder="아이디를 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="userPassword">비밀번호</label>
                        <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호를 입력하세요">
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <label for="password">비밀번호 확인</label>--%>
<%--                        <input type="password" id="userPasswordChk" name="password" placeholder="비밀번호를 한번 더 입력하세요">--%>
<%--                    </div>--%>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" id="email" name="userEmail" placeholder="이메일을 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="age">나이</label>
                        <input type="number" id="age" name="userAge" placeholder="나이를 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="gender">성별</label>
                        <select id="gender" name="userGender">
                            <option value="MALE">MALE</option>
                            <option value="FEMALE">FEMALE</option>
                        </select>
                    </div>
                    <button type="submit">회원가입</button>
                </form>
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



<script>




    // 프로필 사진 관련 스크립트
    const $profile = document.querySelector('.profile');
    const $fileInput = document.getElementById('profile-img');

    // 프로필 추가 영역 클릭 이벤트
    $profile.onclick = e => {
        $fileInput.click();
    };

    // 프로필 사진 선택시 썸네일 이벤트
    $fileInput.onchange = e => {
        // 첨부한 파일의 데이터를 읽어오기
        const fileData = $fileInput.files[0];
        // console.log(fileData);

        // 첨부파일의 바이트데이터를 읽어들이는 객체 생성
        const reader = new FileReader();

        // 파일의 바이트데이터를 읽어서 img태그의 src속성이나
        // a태그의 href속성에 넣기 위한 형태로 읽음
        reader.readAsDataURL(fileData);

        // 첨부파일이 등록되는 순간 img태그에 이미지를 세팅
        reader.onloadend = e => {
            const $imgTag = document.querySelector('.thumbnail-box img');
            $imgTag.setAttribute('src', reader.result);
        };
    };
</script>
</body>
</html>
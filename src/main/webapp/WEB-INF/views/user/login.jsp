<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/login.css" type="text/css" media="all" />
    <style>

    </style>
<%--    <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->--%>
</head>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">
    <div id="header">
        <h1 id="logo"><a href="#">MovieHunter</a></h1>
        <div id="navigation">
            <ul>
                <li><a class="active" href="#">HOME</a></li>
                <li><a href="#">MOVIE</a></li>
                <li><a href="#">로그인</a></li>
            </ul>
        </div>
        <div id="sub-navigation">

        </div>
    </div>
    <div id="main">
        <!-- 로그인 / 회원가입 -->
        <div id="content">
            <div class="container">
                <div class="row full-height justify-content-center">
                    <div class="col-12 text-center align-self-center py-5">
                        <div class="section pb-5 pt-5 pt-sm-2 text-center">
                            <!-- <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6> -->
                            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
                            <label for="reg-log"></label>
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Log In</h4>
                                                <div class="form-group">

                                                    <form action="/user/sign-in" name="sign-in" method="post" id="signInForm">

                                                    <input type="id" name="userId" class="form-style"
                                                           placeholder="4~14글자의 영문, 숫자로 입력하세요." id="logid"
                                                           autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                    </form>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="userPassword" class="form-style"
                                                           placeholder="비밀번호를 입력해주세요." id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <input class="autologin" type="checkbox" id="auto-login"
                                                       name="auto-login" />
                                                <label for="auto-login">자동 로그인</label>
                                                <div class="front-button">
                                                    <input type="button" value="login" class="btn mt-4"
                                                           id="login-btn">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Sign Up</h4>

                                                <form action="/user/sign-up" name="sign-up" id="signUpForm"
                                                      method="post" enctype="multipart/form-data">


                                                    <div class="form-group">
                                                        <p><strong>아이디를 입력해주세요.</strong>
                                                            <span id="idChk"></span></p>
                                                        <input type="id" name="userId" class="form-style"
                                                               placeholder="아이디를 입력해주세요." id="singUpId"
                                                               autocomplete="off">
                                                        <i class="input-icon uil uil-user"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <p><strong>비밀번호를 입력해주세요.</strong>
                                                            <span id="pwChk"></span></p>
                                                        <input type="password" name="userPassword"
                                                               class="form-style" placeholder="비밀번호를 입력해주세요."
                                                               id="signUpPassword" autocomplete="off">
                                                        <i class="input-icon uil uil-at"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <p><strong>비밀번호를 한번 더 입력해주세요.</strong>
                                                            <span id="pwChk2"></span></p>
                                                        <input type="password" name="userPassword"
                                                               class="form-style" placeholder="비밀번호를 한번 더 입력해주세요."
                                                               id="signUpPasswordCheck" autocomplete="off">
                                                        <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <p><strong>이메일을 입력해주세요.</strong>
                                                            <span id="emailChk"></span></p>
                                                        <input type="email" name="userEmail" class="form-style"
                                                               placeholder="이메일을 입력해주세요." id="signUpEmail"
                                                               autocomplete="off">
                                                        <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <p><strong>나이를 입력해주세요.</strong>
                                                            <span id="ageChk"></span></p>
                                                        <input type="text" name="userAge" class="form-style"
                                                               placeholder="나이를 입력해주세요" id="signUpAge" autocomplete="off">
                                                        <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <p><strong>성별을 입력해주세요.</strong><span id="genderChk"></span></p>
                                                        <label>
                                                            <input type="radio" name="gender" value="male"
                                                                   id="genderMale">
                                                            남성
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="gender" value="female"
                                                                   id="genderFemale">
                                                            여성
                                                        </label>
                                                    </div>
                                                    <div class="back-button">
                                                        <input type="button" value="회원가입" class="btn mt-4"
                                                               id="loginBtn">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cl"> </div>
    </div>
    <div id="footer">
        <p class="lf">Copyright © 2010
            <a href="#">SiteName</a> - All Rights Reserved</p>
        <p class="rf">Design by
            <a href="http://chocotemplates.com/">ChocoTemplates.com</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>
<!-- END PAGE SOURCE -->


<script>


    // db저장됐는지 확인

    document.getElementById('loginBtn').addEventListener('click', function() {


        // 입력값 가져오기
        var userId = document.getElementById('singUpId').value.trim();
        var password = document.getElementById('signUpPassword').value.trim();
        var passwordConfirm = document.getElementById('signUpPasswordCheck').value.trim();
        var email = document.getElementById('signUpEmail').value.trim();
        var age = document.getElementById('signUpAge').value.trim();
        var genderMale = document.getElementById('genderMale').checked;
        var genderFemale = document.getElementById('genderFemale').checked;

        // 입력값 검증
        var isValid = true;

        if (userId === '') {
            document.getElementById('idChk').innerHTML = '<b style="color: red;">[아이디를 입력해주세요.]</b>';
            isValid = false;
        }

        if (password === '') {
            document.getElementById('pwChk').innerHTML = '<b style="color: red;">[비밀번호를 입력해주세요.]</b>';
            isValid = false;
        }

        if (passwordConfirm === '') {
            document.getElementById('pwChk2').innerHTML = '<b style="color: red;">[비밀번호를 한번 더 입력해주세요.]</b>';
            isValid = false;
        }

        if (email === '') {
            document.getElementById('emailChk').innerHTML = '<b style="color: red;">[이메일을 입력해주세요.]</b>';
            isValid = false;
        }

        if (age === '') {
            document.getElementById('ageChk').innerHTML = '<b style="color: red;">[나이를 입력해주세요.]</b>';
            isValid = false;
        }

        if (!genderMale && !genderFemale) {
            document.getElementById('genderChk').innerHTML = '<b style="color: red;">[성별을 선택해주세요.]</b>';
            isValid = false;
        }

        // DB 저장 여부 확인
        if (isValid) {
            // 여기에 DB에 저장하는 로직을 추가하면 됩니다.
            console.log('DB에 저장되었습니다.');
        } else {
            console.log('입력값이 유효하지 않습니다.');
        }
    });






    // // 프로필 사진 관련 스크립트
    // const $profile = document.querySelector('.profile');
    // const $fileInput = document.getElementById('profile-img');

    // // 프로필 추가 영역 클릭 이벤트
    // $profile.onclick = e => {
    //     $fileInput.click();
    // };

    // // 프로필 사진 변경 이벤트
    // $fileInput.onchange = e => {
    //     // 첨부한 파일의 데이터를 읽어오기
    //     const fileData = $fileInput.files[0]
    //     // console.log(fileData);

    //     // 첨부파일의 바이트데이터를 읽어들이는 객체 생성
    //     const reader = new FileReader();

    //     // 파일의 바이트데이터를 읽어서 img 태그의 src 속성이나 a 태그의 href 속성에 넣기 위한 형태로 익름
    //     reader.readAsDataURL(fileData);

    //     // 첨부파일이 등록되는 순간 img태그에 이미지를 세팅
    //     reader.onloadend = e => {
    //         const $profileImg = document.querySelector('.thumbnail-box img');
    //         $profileImg.setAttribute('src', reader.result);
    //     };
    // };
</script>




</body>

</html>

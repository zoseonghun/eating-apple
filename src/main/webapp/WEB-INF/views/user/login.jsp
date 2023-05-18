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
    <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
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
                                                               id="login-btn">
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


    // // 회원가입 입력값 검증 처리
    //
    // // 입력값 검증 통과 여부 배열
    // const checkResultList = [false, false, false, false, false, false];
    //
    // // 아이디 검사 정규표현식
    // const accountPattern = /^[a-zA-Z0-9]{4,14}$/;
    //
    // // 아이디 입력값 검증
    // const $idInput = document.getElementById('logid');
    //
    // $idInput.onkeyup = e => {
    //
    //     const idValue = $idInput.value;
    //     // console.log(idValue);
    //
    //     if (idValue.trim() === '') {
    //         $idInput.style.borderColor = 'red';
    //         document.getElementById('idChk').innerHTML = '<b style="color: red;">[아이디는 필수값입니다]</b>';
    //         checkResultList[0] = false;
    //     } else if (!accountPattern.test(idValue)) {
    //         $idInput.style.borderColor = 'red';
    //         document.getElementById('idChk').innerHTML =
    //             '<b style="color: red;">[아이디는 4~14글자의 영문, 숫자로 입력하세요.]</b>';
    //         checkResultList[0] = false;
    //     } else {
    //
    //         fetch('/user/check?type=userId&keyword=' + idValue)
    //             .then(res => res.json())
    //             .then(flag => {
    //                 if (flag) { // 중복
    //                     $idInput.style.borderColor = 'red';
    //                     document.getElementById('idChk').innerHTML =
    //                         '<b style="color: red;">[이미 사용중인 아이디입니다.]</b>';
    //                     checkResultList[0] = false;
    //                 } else {
    //                     $idInput.style.borderColor = 'limegreen';
    //                     document.getElementById('idChk').innerHTML =
    //                         '<b style="color: limegreen;">[사용 가능한 아이디입니다.]</b>';
    //                     checkResultList[0] = true;
    //                 }
    //             });
    //     }
    //
    // };
    //
    // // 패스워드 검사 정규표현식
    // const passwordPattern = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
    //
    // // 패스워드 입력값 검증
    // const $pwInput = document.getElementById('password');
    //
    // $pwInput.onkeyup = e => {
    //
    //     const pwValue = $pwInput.value;
    //     // console.log(idValue);
    //
    //     if (pwValue.trim() === '') {
    //         $pwInput.style.borderColor = 'red';
    //         document.getElementById('pwChk').innerHTML = '<b style="color: red;">[비밀번호는 필수값입니다!]</b>';
    //         checkResultList[1] = false;
    //     } else if (!passwordPattern.test(pwValue)) {
    //         $pwInput.style.borderColor = 'red';
    //         document.getElementById('pwChk').innerHTML = '<b style="color: red;">[특수문자 포함 8자 이상!]</b>';
    //         checkResultList[1] = false;
    //     } else {
    //
    //         $pwInput.style.borderColor = 'skyblue';
    //         document.getElementById('pwChk').innerHTML = '<b style="color: skyblue;">[사용가능한 비밀번호입니다.]</b>';
    //         checkResultList[1] = true;
    //
    //     }
    // };
    //
    //
    // // 패스워드 확인란 입력값 검증
    // const $pwCheckInput = document.getElementById('password_check');
    //
    // $pwCheckInput.onkeyup = e => {
    //
    //     const pwCheckValue = $pwCheckInput.value;
    //     // console.log(idValue);
    //
    //     if (pwCheckValue.trim() === '') {
    //         $pwCheckInput.style.borderColor = 'red';
    //         document.getElementById('pwChk2').innerHTML = '<b style="color: red;">[비밀번호 확인란은 필수값입니다!]</b>';
    //         checkResultList[2] = false;
    //     } else if ($pwCheckInput.value !== $pwInput.value) {
    //         $pwCheckInput.style.borderColor = 'red';
    //         document.getElementById('pwChk2').innerHTML = '<b style="color: red;">[위에랑 똑같이 쓰세요!]</b>';
    //         checkResultList[2] = false;
    //     } else {
    //
    //         $pwCheckInput.style.borderColor = 'skyblue';
    //         document.getElementById('pwChk2').innerHTML = '<b style="color: skyblue;">[참 잘했어요~]</b>';
    //         checkResultList[2] = true;
    //
    //     }
    // };
    //
    // // 이메일 검사 정규표현식
    // const emailPattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    //
    // // 이메일 입력값 검증
    // const $emailInput = document.getElementById('user_email');
    //
    // $emailInput.onkeyup = e => {
    //
    //     const emailValue = $emailInput.value;
    //     // console.log(idValue);
    //
    //     if (emailValue.trim() === '') {
    //         $emailInput.style.borderColor = 'red';
    //         document.getElementById('emailChk').innerHTML = '<b style="color: red;">[이메일 필수값입니다!]</b>';
    //         checkResultList[3] = false;
    //     } else if (!emailPattern.test(emailValue)) {
    //         $emailInput.style.borderColor = 'red';
    //         document.getElementById('emailChk').innerHTML = '<b style="color: red;">[이메일 형식을 지켜주세요~]</b>';
    //         checkResultList[3] = false;
    //     } else {
    //
    //         fetch('/user/check?type=email&keyword=' + emailValue)
    //             .then(res => res.json())
    //             .then(flag => {
    //                 if (flag) { // 중복
    //                     $emailInput.style.borderColor = 'red';
    //                     document.getElementById('emailChk').innerHTML =
    //                         '<b style="color: red;">[이메일이 중복되었습니다.]</b>';
    //                     checkResultList[3] = false;
    //                 } else {
    //                     $emailInput.style.borderColor = 'skyblue';
    //                     document.getElementById('emailChk').innerHTML =
    //                         '<b style="color: skyblue;">[사용가능한 이메일입니다.]</b>';
    //                     checkResultList[3] = true;
    //                 }
    //             });
    //
    //     }
    // };
    //
    // // 나이 검사 정규표현식
    // const agePattern = /^(1[0-9]|[2-7][0-9]|80)$/;
    //
    // // 나이 입력값 검증
    // const $ageInput = document.getElementById('signup-age');
    //
    // $ageInput.onkeyup = e => {
    //     const ageValue = $ageInput.value.trim();
    //
    //     if (ageValue === '') {
    //         $ageInput.style.borderColor = 'red';
    //         document.getElementById('ageChk').innerHTML = '<b style="color: red;">[나이는 필수 정보입니다.]</b>';
    //         checkResultList[4] = false;
    //     } else if (!agePattern.test(ageValue)) {
    //         $ageInput.style.borderColor = 'red';
    //         document.getElementById('ageChk').innerHTML = '<b style="color: red;">[10세부터 80세까지 입력해주세요.]</b>';
    //         checkResultList[4] = false;
    //     } else {
    //         $ageInput.style.borderColor = 'skyblue';
    //         document.getElementById('ageChk').innerHTML = '<b style="color: skyblue;">[사용 가능한 나이입니다.]</b>';
    //         checkResultList[4] = true;
    //     }
    // };
    //
    // // 성별 검사 정규표현식
    // const genderPattern = /^(male|female)$/i;
    //
    // // 성별 입력값 검증
    // const genderMaleInput = document.getElementById('genderMale');
    // const genderFemaleInput = document.getElementById('genderFemale');
    //
    // function validateGender() {
    //     if (genderMaleInput.checked || genderFemaleInput.checked) {
    //         document.getElementById('genderChk').innerHTML = '';
    //         checkResultList[5] = true;
    //     } else {
    //         document.getElementById('genderChk').innerHTML = '<b style="color: red;">[성별을 선택해주세요.]</b>';
    //         checkResultList[5] = false;
    //     }
    // }
    //
    // genderMaleInput.addEventListener('change', validateGender);
    // genderFemaleInput.addEventListener('change', validateGender);



    // db저장됐는지 확인

    document.getElementById('login-btn').addEventListener('click', function() {


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
-



</body>

</html>
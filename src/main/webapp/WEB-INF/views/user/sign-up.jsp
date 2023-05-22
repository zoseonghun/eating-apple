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

                    <form action="/user/sign-up" name="signup" id="signUpForm" method="POST" enctype="multipart/form-data">
                        <div class="profile">
                            <div class="thumbnail-box">
                                <img src="/assets/img/image-add.png" alt="프로필 썸네일">
                            </div>
                            <label for="profile-img">프로필 사진</label>
                            <input type="file" id="profile-img" name="profileImage" accept="image/*">
                        </div>
                        <div class="form-group">
                            <label for="signId"><strong>아이디를 입력해주세요.</strong><p id="idChk"></p></label>
                            <input type="text" id="signId" name="userId" placeholder="최대 10자">
                        </div>
                        <div class="form-group">
                            <label for="signPassword"><strong>비밀번호를 입력해주세요.</strong><p id="pwChk"></p></label>
                            <input type="password" id="signPassword" name="userPassword" placeholder="영문과 특수문자를 포함한 최소 8자">
                        </div>
                        <div class="form-group">
                            <label for="checkPassword"><strong>비밀번호를 재입력해주세요.</strong><p id="pwChk2"></p></label>
                            <input type="password" id="checkPassword" name="rePassword" placeholder="비밀번호가 일치해야합니다.">
                        </div>
                        <div class="form-group">
                            <label for="signEmail"><strong>이메일을 입력해주세요.</strong><p id="emailChk"></p></label>
                            <input type="email" id="signEmail" name="userEmail" placeholder="ex) aaa@bbb.com">
                        </div>
                        <div class="form-group">
                            <label for="signAge"><strong>나이를 입력해주세요.</strong><p id="ageChk"></p></label>
                            <input type="number" id="signAge" name="userAge" placeholder="연령제한은 10~80까지입니다.">
                        </div>
                        <div class="form-group">
                            <label for="signGender"><strong>성별을 선택해주세요.</strong><p id="genderChk"></p></label>
                            <select id="signGender" name="userGender">
                                <option value="MALE">MALE</option>
                                <option value="FEMALE">FEMALE</option>
                            </select>
                        </div>
                        <input type="button" value="회원가입" id="signBtn">
                    </form>
                </div>
            </div>
        </div>
        <div class="cl"></div>
    </div>

    <!-- footer -->
    <%@ include file="../include/footer.jsp" %>
    <!-- footer end -->
</body>






<script>

    // 회원가입 입력값 검증 처리

    // 입력값 검증 통과 여부 배열
    const checkResultList = [false, false, false, false, false];

    // 아이디 검사 정규표현식
    const accountPattern = /^[a-zA-Z0-9]{4,14}$/;

    // 아이디 입력값 검증
    const $idInput = document.getElementById('signId');

    $idInput.onkeyup = e => {

        const idValue = $idInput.value;

        if (idValue.trim() === '') {
            $idInput.style.borderColor = 'red';
            document.getElementById('idChk').innerHTML
                = '<b style="color: red;">[아이디는 필수값입니다!]</b>';
            checkResultList[0] = false;
        } else if (!accountPattern.test(idValue)) {
            $idInput.style.borderColor = 'red';
            document.getElementById('idChk').innerHTML
                = '<b style="color: red;">[아이디는 4~14글자의 영문,숫자로 입력하세요.]</b>';
            checkResultList[0] = false;
        } else {

            fetch('/user/check?type=userid&keyword=' + idValue)
                .then(res => res.json())
                .then(flag => {
                    if (flag) { // 중복
                        $idInput.style.borderColor = 'red';
                        document.getElementById('idChk').innerHTML
                            = '<b style="color: red;">[아이디가 중복되었습니다.]</b>';
                        checkResultList[0] = false;
                    } else {
                        $idInput.style.borderColor = 'skyblue';
                        document.getElementById('idChk').innerHTML
                            = '<b style="color: skyblue;">[사용가능한 아이디입니다.]</b>';
                        checkResultList[0] = true;
                    }
                });


        }
    };

    // 패스워드 검사 정규표현식
    const passwordPattern = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;

    // 패스워드 입력값 검증
    const $pwInput = document.getElementById('signPassword');

    $pwInput.onkeyup = e => {

        const pwValue = $pwInput.value;

        if (pwValue.trim() === '') {
            $pwInput.style.borderColor = 'red';
            document.getElementById('pwChk').innerHTML
                = '<b style="color: red;">[비밀번호는 필수값입니다!]</b>';
            checkResultList[1] = false;
        } else if (!passwordPattern.test(pwValue)) {
            $pwInput.style.borderColor = 'red';
            document.getElementById('pwChk').innerHTML
                = '<b style="color: red;">[특수문자 포함 8자 이상!]</b>';
            checkResultList[1] = false;
        } else {

            $pwInput.style.borderColor = 'skyblue';
            document.getElementById('pwChk').innerHTML
                = '<b style="color: skyblue;">[사용가능한 비밀번호입니다.]</b>';
            checkResultList[1] = true;

        }
    };

    // 패스워드 확인란 입력값 검증
    const $pwCheckInput = document.getElementById('checkPassword');

    $pwCheckInput.onkeyup = e => {

        const pwCheckValue = $pwCheckInput.value;

        if (pwCheckValue.trim() === '') {
            $pwCheckInput.style.borderColor = 'red';
            document.getElementById('pwChk2').innerHTML
                = '<b style="color: red;">[비밀번호 확인란은 필수값입니다!]</b>';
            checkResultList[2] = false;
        } else if ($pwCheckInput.value !== $pwInput.value) {
            $pwCheckInput.style.borderColor = 'red';
            document.getElementById('pwChk2').innerHTML
                = '<b style="color: red;">[위 비밀번호와 똑같이 입력해주세요.!]</b>';
            checkResultList[2] = false;
        } else {

            $pwCheckInput.style.borderColor = 'skyblue';
            document.getElementById('pwChk2').innerHTML
                = '<b style="color: skyblue;">[비밀번호가 일치합니다.~]</b>';
            checkResultList[2] = true;

        }
    };

    // 이메일 검사 정규표현식
    const emailPattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

    // 이메일 입력값 검증
    const $emailInput = document.getElementById('signEmail');

    $emailInput.onkeyup = e => {

        const emailValue = $emailInput.value;

        if (emailValue.trim() === '') {
            $emailInput.style.borderColor = 'red';
            document.getElementById('emailChk').innerHTML
                = '<b style="color: red;">[이메일 필수값입니다!]</b>';
            checkResultList[3] = false;
        } else if (!emailPattern.test(emailValue)) {
            $emailInput.style.borderColor = 'red';
            document.getElementById('emailChk').innerHTML
                = '<b style="color: red;">[이메일 형식을 지켜주세요~]</b>';
            checkResultList[3] = false;
        } else {

            fetch('/user/check?type=email&keyword=' + emailValue)
                .then(res => res.json())
                .then(flag => {
                    if (flag) { // 중복
                        $emailInput.style.borderColor = 'red';
                        document.getElementById('emailChk').innerHTML
                            = '<b style="color: red;">[이메일이 중복되었습니다.]</b>';
                        checkResultList[3] = false;
                    } else {
                        $emailInput.style.borderColor = 'skyblue';
                        document.getElementById('emailChk').innerHTML
                            = '<b style="color: skyblue;">[사용가능한 이메일입니다.]</b>';
                        checkResultList[3] = true;
                    }
                });


        }
    };

    // 나이 검사 정규표현식(범위 : 10~80)
    const agePattern = /^(1[0-9]|[2-7][0-9]|80)$/;

    // 나이 입력값 검증
    const $ageInput = document.getElementById('signAge');

    $ageInput.onkeyup = e => {

        const ageValue = $ageInput.value;

        if (ageValue.trim() === '') {
            $ageInput.style.borderColor = 'red';
            document.getElementById('ageChk').innerHTML = '<b style="color: red;">[나이 필수값입니다!]</b>';
            checkResultList[4] = false;
        } else if (!agePattern.test(ageValue)) {
            $ageInput.style.borderColor = 'red';
            document.getElementById('ageChk').innerHTML = '<b style="color: red;">[나이는 10부터 80까지 입력하세요!]</b>';
            checkResultList[4] = false;
        } else {
            $ageInput.style.borderColor = 'skyblue';
            document.getElementById('ageChk').innerHTML = '<b style="color: skyblue;">[유효한 나이입니다.]</b>';
            checkResultList[4] = true;
        }
    };

 /*   // 성별 검사 정규표현식(MALE or FEMALE)
    const genderPattern = /^(MALE|FEMALE)$/;

    // 성별 입력값 검증
    const $genderSelect = document.getElementById('signGender');

    $genderSelect.onchange = e => {

        const genderValue = $genderSelect.value;

        if (!genderPattern.test(genderValue)) {
            $genderSelect.style.borderColor = 'red';
            document.getElementById('genderChk').innerHTML = '<b style="color: red;">[성별을 선택해주세요!]</b>';
            checkResultList[5] = true;
        } else {
            $genderSelect.style.borderColor = 'skyblue';
            document.getElementById('genderChk').innerHTML = '<b style="color: skyblue;">[유효한 성별입니다.]</b>';
            checkResultList[5] = true;
        }
    };*/

    // 회원가입 버튼 클릭 이벤트
    document.getElementById('signBtn').onclick = e => {

        // 5개의 입력칸이 모두 통과되었을 경우 폼을 서브밋
        const $form = document.getElementById('signUpForm');
        console.log(checkResultList);
        if(!checkResultList.includes(false)) {
            $form.submit();
        } else {
            alert('입력란을 다시 확인하세요!');
        }
    };














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
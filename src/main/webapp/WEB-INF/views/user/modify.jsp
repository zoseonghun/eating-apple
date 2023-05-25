<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>EATINGAPPLE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/style.css" type="text/css">

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
            <div id="container modify">
                <h2>회원 정보 수정</h2>
                <form action="/user/modify" method="POST" id="modifyForm" enctype="multipart/form-data">
                    <%--                <input type="hidden" name="userNum" value="">--%>

                        <div class="profile">
                            <div class="thumbnail-box">
                                <img src="${login.sprofileimage != null ? login.sprofileimage : '/assets/img/image-add.png'}"
                                     alt="프로필 썸네일" id="profile-preview" style="cursor: pointer">
                            </div>
                            <label for="profile-img">프로필 사진</label>
                            <input type="file" id="profile-img" name="profileImage" accept="image/*">
                        </div>

                    <label for="signId">아이디:</label>
                    <input type="text" id="signId" name="userId" value="${login.suserid}" readonly>

                    <label for="signPassword">비밀번호:<p id="pwChk"></p></label>
                    <input type="password" id="signPassword" name="userPassword">

                    <label for="checkPassword">비밀번호 재확인:<p id="pwChk2"></p></label>
                    <input type="password" id="checkPassword" name="rePassword">

                    <label for="signEmail">이메일:<p id="emailChk"></p></label>
                    <input type="email" id="signEmail" name="userEmail">

                    <label for="signAge">나이:</label>
                    <input type="text" id="signAge" name="userAge" value="${login.suserage}" readonly>

                    <label for="signGender">성별:</label>
                    <input type="text" id="signGender" name="userGender" value="${login.susergender}" readonly>

                    <input type="button" value="수정완료" id="modifyBtn">
                </form>
            </div>

        </div>
        <div class="cl">&nbsp;</div>
    </div>


    <!-- footer -->
    <%@ include file="../include/footer.jsp" %>
    <!-- footer end -->

    <script>

        // 프로필 사진 클릭 시 파일 선택 창 열기
        document.getElementById('profile-preview').onclick = () => {
            document.getElementById('profile-img').click();
        };

        // 선택한 사진 파일 표시하기
        document.getElementById('profile-img').onchange = (e) => {
            const file = e.target.files[0];
            const reader = new FileReader();

            reader.onload = (event) => {
                document.getElementById('profile-preview').src = event.target.result;
            };

            if (file) {
                reader.readAsDataURL(file);
            }
        };

        const checkResultList = [false, false, false];

        // 패스워드 검사 정규표현식
        const passwordPattern = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;

        // 패스워드 입력값 검증
        const $pwInput = document.getElementById('signPassword');

        $pwInput.onkeyup = e => {

            const pwValue = $pwInput.value;

            if (pwValue.trim() === '') {
                $pwInput.style.borderColor = 'red';
                document.getElementById('pwChk').innerHTML
                    = '<b style="color: red;">[비밀번호를 입력해주세요!]</b>';
                checkResultList[0] = false;
            } else if (!passwordPattern.test(pwValue)) {
                $pwInput.style.borderColor = 'red';
                document.getElementById('pwChk').innerHTML
                    = '<b style="color: red;">[특수문자 포함 8자 이상!]</b>';
                checkResultList[0] = false;
            } else {

                $pwInput.style.borderColor = 'skyblue';
                document.getElementById('pwChk').innerHTML
                    = '<b style="color: skyblue;">[사용가능한 비밀번호입니다.]</b>';
                checkResultList[0] = true;

            }
        };

        // 패스워드 확인란 입력값 검증
        const $pwCheckInput = document.getElementById('checkPassword');

        $pwCheckInput.onkeyup = e => {

            const pwCheckValue = $pwCheckInput.value;

            if (pwCheckValue.trim() === '') {
                $pwCheckInput.style.borderColor = 'red';
                document.getElementById('pwChk2').innerHTML
                    = '<b style="color: red;">[비밀번호를 한번 더 입력해주세요.!]</b>';
                checkResultList[1] = false;
            } else if ($pwCheckInput.value !== $pwInput.value) {
                $pwCheckInput.style.borderColor = 'red';
                document.getElementById('pwChk2').innerHTML
                    = '<b style="color: red;">[위 비밀번호와 똑같이 입력해주세요.!]</b>';
                checkResultList[1] = false;
            } else {

                $pwCheckInput.style.borderColor = 'skyblue';
                document.getElementById('pwChk2').innerHTML
                    = '<b style="color: skyblue;">[비밀번호가 일치합니다.~]</b>';
                checkResultList[1] = true;

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
                checkResultList[2] = false;
            } else if (!emailPattern.test(emailValue)) {
                $emailInput.style.borderColor = 'red';
                document.getElementById('emailChk').innerHTML
                    = '<b style="color: red;">[이메일 형식을 지켜주세요~]</b>';
                checkResultList[2] = false;
            } else {

                fetch('/user/check?type=email&keyword=' + emailValue)
                    .then(res => res.json())
                    .then(flag => {
                        if (flag) { // 중복
                            $emailInput.style.borderColor = 'red';
                            document.getElementById('emailChk').innerHTML
                                = '<b style="color: red;">[이메일이 중복되었습니다.]</b>';
                            checkResultList[2] = false;
                        } else {
                            $emailInput.style.borderColor = 'skyblue';
                            document.getElementById('emailChk').innerHTML
                                = '<b style="color: skyblue;">[사용가능한 이메일입니다.]</b>';
                            checkResultList[2] = true;
                        }
                    });


            }
        };

        document.getElementById('modifyBtn').onclick = e => {
            const $form = document.getElementById('modifyForm');
            console.log(checkResultList);
            if(!checkResultList.includes(false)) {
                $form.submit();
            } else {
                alert('입력란을 다시 확인하세요!');
            }
        };



    </script>


</body>
</html>
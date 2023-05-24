<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/admin.css" type="text/css" media="all"/>
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
            <div class="container movie-save-box">

                <form action="post-url" name="post-name" id="post-id" method="POST"
                      enctype="multipart/form-data">

                    <div class="movie-img-box">
                        <div class="thumbnail-box">
                            <img src="/assets/img/free-icon-addition-thick-symbol-20183.png" alt="포스터 썸네일">
                        </div>
                        <label for="poster-img">포스터 사진 추가</label>
                        <input type="file" id="poster-img" name="imgUrl" accept="image/*">
                    </div>



                    <div class="movie-save-left-right-box">


                        <div class="movie-save-left-box">


                            <div class="form-group">
                                <label for="test1"><strong>Movie Title</strong>
                                    <p id="test1-err"></p>
                                </label>
                                <input type="text" id="test1" name="title" placeholder="입력해주세요">
                            </div>

                            <div class="form-group">
                                <label for="test2"><strong>Movie Runtime</strong>
                                    <p id="test2-err"></p>
                                </label>
                                <input type="text" id="test2" name="runtime" placeholder="입력해주세요">
                            </div>

                            <div class="form-group">
                                <label for="test3"><strong>Age Classification</strong>
                                    <p id="test3-err"></p>
                                </label>
                                <input type="text" id="test3" name="age" placeholder="입력해주세요">
                            </div>
                            <div class="form-group">
                                <label for="test4"><strong>Movie Genre</strong>
                                    <p id="test4-err"></p>
                                </label>
                                <input type="text" id="test4" name="genre" placeholder="입력해주세요">
                            </div>



                        </div>



                        <div class="movie-save-right-box">
                            <div class="form-group">
                                <label for="test5"><strong>Movie Trailer Link</strong>
                                    <p id="test5-err"></p>
                                </label>
                                <input type="text" id="test5" name="imgYoutubeUrl" placeholder="입력해주세요">
                            </div>
                            <div class="form-group">
                                <label for="test6"><strong>Movie Director</strong>
                                    <p id="test6-err"></p>
                                </label>
                                <input type="text" id="test6" name="director" placeholder="입력해주세요">
                            </div>

                            <div class="form-group">
                                <label for="movie-info"><strong>Movie Info</strong>
                                    <p id="movie-info-err"></p>
                                </label>
                                <input type="text" id="movie-info" name="info" placeholder="입력해주세요">
                            </div>



                        </div>




                    </div>



                    <input type="button" value="저장하기" id="movie-save-button">
                </form>
            </div>
        </div>
    </div>
    <div class="cl"></div>
</div>

<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end -->

<script>
    // 입력값 검증 통과 여부 배열
    const checkResultList = [false, false, false, false, false, false, false, false];

    // 포스터 사진 검사
    const $imgUrl = document.getElementById('imgUrl');
    $imgUrl.onkeyup = e => {
        const imgUrl = $imgUrl.value;


    };

    // 제목 검사
    const $title = document.getElementById('title');
    $title.onkeyup = e => {
        const title = $title.value;


    };
    // 런타임 검사
    const $runtime = document.getElementById('runtime');
    $runtime.onkeyup = e => {
        const runtime = $runtime.value;

    };
    // 감독 검사
    const $director = document.getElementById('director');
    $director.onkeyup = e => {
        const idValue = $director.value;

    };
    // 나이 검사
    const $age = document.getElementById('age');
    $age.onkeyup = e => {
        const age = $age.value;

    };
    // 장르 검사
    const $genre = document.getElementById('genre');
    $genre.onkeyup = e => {
        const genre = $genre.value;

    };
    // 예고편주소 검사
    const $imgYoutubeUrl = document.getElementById('imgYoutubeUrl');
    $imgYoutubeUrl.onkeyup = e => {
        const imgYoutubeUrl = $imgYoutubeUrl.value;

    };
    // 영화내용 검사
    const $info = document.getElementById('info');
    $info.onkeyup = e => {
        const info = $info.value;

    };








    // 포스터 사진관련 스크립트
    const $profile = document.querySelector('.movie-img-box');
    const $fileInput = document.getElementById('poster-img');

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
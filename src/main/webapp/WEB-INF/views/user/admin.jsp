<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/admin.css" type="text/css" media="all" />
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

                    <form action="/movies/new" name="post-name" id="post-id" method="POST"
                        enctype="multipart/form-data">

                        <div class="movie-img-box">
                            <div class="thumbnail-box">
                                <img src="/assets/img/free-icon-addition-thick-symbol-20183.png" alt="포스터 썸네일">
                            </div>
                            <label for="poster-img">포스터 사진 추가</label>
                            <input type="file" id="poster-img" name="imgFile" accept="image/*">
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

                        <input type="submit" value="저장하기" id="movie-save-button">
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
        window.onload = function () {
            //
            //      입력값 검증 통과 여부 배열
            const checkResultList = [false, false, false, false, false, false, false, false];
            //
            //     window.onload = function (){};
            //     포스터 사진 검사
            //     const $imgUrl = document.getElementById('poster-img');
            //     // 사진이 등록되어있지 않으면 false
            //     $imgUrl.onkeyup = e => {
            //         const imgUrl = $imgUrl.value;
            //         if (imgUrl.trim() === '') {
            //             checkResultList[0] = false;
            //         }else{
            //             checkResultList[0] = true;
            //         }
            //
            //     };

            // 제목 검사
            const $title = document.getElementById('movie-title');
            $title.onkeyup = e => {
                const title = $title.value;
                console.log(title);
                if (title.trim() === '') {
                    $title.style.borderColor = 'red';
                    document.getElementById('movie-title-err').innerHTML =
                        '<b style="color: red;">[제목은 필수값입니다!]</b>';
                    checkResultList[1] = false;
                } else {
                    checkResultList[1] = true;
                }

            };



            // 런타임 검사
            const $runtime = document.getElementById('movie-runtime');
            $runtime.onkeyup = e => {
                const runtime = $runtime.value;
                if (runtime.trim() === '') {
                    $runtime.style.borderColor = 'red';
                    document.getElementById('movie-runtime-err').innerHTML =
                        '<b style="color: red;">[런타임은 필수값입니다!]</b>';
                    checkResultList[2] = false;
                } else {
                    checkResultList[2] = true;
                }

            };
            // 감독 검사
            const $director = document.getElementById('movie-director');
            $director.onkeyup = e => {
                const director = $director.value;
                if (director.trim() === '') {
                    $director.style.borderColor = 'red';
                    document.getElementById('movie-director-err').innerHTML =
                        '<b style="color: red;">[감독은 필수값입니다!]</b>';
                    checkResultList[3] = false;
                } else {
                    checkResultList[3] = true;
                }

            };
            // 나이 검사
            const $age = document.getElementById('movie-age');
            $age.onkeyup = e => {
                const age = $age.value;
                if (age.trim() === '') {
                    $age.style.borderColor = 'red';
                    document.getElementById('movie-age-err').innerHTML =
                        '<b style="color: red;">[나이는 필수값입니다!]</b>';
                    checkResultList[4] = false;
                } else {
                    checkResultList[4] = true;
                }

            };
            // 장르 검사
            const $genre = document.getElementById('movie-genre');
            $genre.onkeyup = e => {
                const genre = $genre.value;
                if (genre.trim() === '') {
                    $genre.style.borderColor = 'red';
                    document.getElementById('movie-genre-err').innerHTML =
                        '<b style="color: red;">[장르는 필수값입니다!]</b>';
                    checkResultList[5] = false;
                } else {
                    checkResultList[5] = true;
                }

            };
            // 예고편주소 검사
            const $imgYoutubeUrl = document.getElementById('movie-imgYoutubeUrl');
            $imgYoutubeUrl.onkeyup = e => {
                const imgYoutubeUrl = $imgYoutubeUrl.value;
                if (imgYoutubeUrl.trim() === '') {
                    $imgYoutubeUrl.style.borderColor = 'red';
                    document.getElementById('movie-imgYoutubeUrl-err').innerHTML =
                        '<b style="color: red;">[url은 필수값입니다!]</b>';
                    checkResultList[6] = false;
                } else {
                    checkResultList[6] = true;
                }

            };
            // 영화내용 검사
            const $info = document.getElementById('movie-info');
            $info.onkeyup = e => {
                const info = $info.value;
                if (info.trim() === '') {
                    $info.style.borderColor = 'red';
                    document.getElementById('movie-info-err').innerHTML =
                        '<b style="color: red;">내용은 필수값입니다!]</b>';
                    checkResultList[7] = false;
                } else {
                    checkResultList[7] = true;
                }

            };





            // 영화 저장하기 클릭 이벤트
            document.getElementById('movie-save-button').onclick = e => {
                // 8개의 입력칸이 모두 통과되었을 경우 폼을 서브밋
                const $form = document.getElementById('movie-save-form');
                console.log(checkResultList);
                if (!checkResultList.includes(false)) {
                    $form.submit();
                } else {
                    alert('입력란을 다시 확인하세요!');
                }
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




        };
    </script>

</body>

</html>
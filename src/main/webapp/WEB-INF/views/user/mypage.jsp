<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>사소한 사과 마이페이지</title>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
        <link rel="stylesheet" href="/assets/css/common-new.css" type="text/css" media="all" />
        <link rel="stylesheet" href="/assets/css/mypage-info.css" type="text/css" media="all" />
        <script></script>
        <title>Document</title>
    </head>

<body>

    <!-- START PAGE SOURCE -->
    <div id="shell">


        <div id="header">
            <h1 id="logo"><a href="/">MovieHunter</a></h1>
            <div id="navigation">
                <ul>
                    <li><a class="active" href="/movie/list">HOME</a></li>
                    <li><a href="#">MOVIE</a></li>
                    <li><a href="login">로그인</a></li>
                </ul>
            </div>
            <div id="sub-navigation">

            </div>
        </div>


        <div id="main">
            <div id="content">

                <!-- 마이페이지 -->
              <!-- //blue -->
                <div class="mypage">
                    <div class="frame">

                        <div class="mypage-info">
                            <div class="mypage-id">
                                ${(login == null) ? '' :login.user-Id}님 반갑습니다
                            </div>
                            <div class="mybasic-info">
                                <div class="profile-image">
                                    <!-- <p>프로필사진</p> -->
                                </div>

                                <div class="usergrade">
                                    ${(login == null) ? '' :login.user-Id}님의 등급은 ${(login == null) ? ''
                                    :login.user-grade} 입니다
                                </div>

                                <div class="mypoint">
                                    <div class="mycoupon">
                                        <p>나의 포인트</p>
                                        <p>${(login == null) ? '' :login.user-point}점</p>
                                    </div>

                                    <div class="myrealpoint">
                                        <p> 포인트 산정방법</p>
                                        <ul class="how-to-get-point">
                                            <li class="list">1. 영화 리뷰 작성 시 포인트 100점</li>
                                            <li class="list">2. 영화 리뷰 연속 5개 작성 시 포인트 200점</li>
                                            <li class="list">3. 영화 좋아요 클릭 시 포인트 20점</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="bottom-info">
                            <div class="bottom-info-detail">
                                <div class="myactive">
                                    ▷나의 활동내역
                                </div>

                                <div class="review-interest">
                                    <div class="top-button-tag">
                                        <p>내가 쓴 리뷰</p>
                                        <p>관심 영화 목록</p>
                                    </div>

                                    <div class="mydetail-contents">
                                        <div class="mydetail-myreview">
                                            <p>내용</p>
                                        </div>

                                        <div class="mydetail-myinterest">
                                            <p>내용내용</p>
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






</body>

<script>




// 아래 hover 박스 클릭시 발생되는 이벤트 작성

document.addEventListener("DOMContentLoaded", function() {
  var pTags = document.querySelectorAll(".top-button-tag p");

  pTags.forEach(function(pTag) {
    pTag.addEventListener("click", function() {
      var detailContents = document.querySelectorAll(".mydetail-contents");

      detailContents.forEach(function(detailContent) {
        detailContent.style.display = "none";
      });

      var targetContent = this.textContent === "내가 쓴 리뷰" ?
        document.querySelector(".mydetail-myreview") :
        document.querySelector(".mydetail-myinterest");

      targetContent.style.display = "block";
    });
  });
});

  


</script>

</html>
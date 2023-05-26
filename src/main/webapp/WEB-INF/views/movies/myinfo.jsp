<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EATINGAPPLE</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/mypage-myinfo.css" type="text/css" media="all" />

</head>
<body>
    
    

  <!-- START PAGE SOURCE -->
  <div id="shell">
    <!-- <%@ include file="../include/header.jsp" %> -->

    <div id="header">
      <h1 id="logo"><a href="#">MovieHunter</a></h1>
      <div id="navigation">
        <ul>   <li><a class="active" href="#">HOME</a></li>
            <li><a href="#">MOVIE</a></li>
            <li><a href="#">로그인</a></li>
          </ul>
        </div>
        <div id="sub-navigation">
  
        </div>
      </div>
  
  
      <div id="main">
        <div id="content">
  
          <!-- 마이페이지 -->
          <div id="menu" class="popup_menu" style="width: 270px">
  
            <div class="m_acco">
              <a class="menuList" href="#">마이페이지</a>
              <a class="menuList" href="#">
                내가 찜한 목록보기
              </a>
              <a class="menuList" href="#">
                내가 쓴 글
              </a>
              <a class="menuList" href="#">
                정보 수정
              </a>
            </div>
          </div>
  
  
          <!-- //blue -->
          <div class="mypage">
            <div class="frame">
            <div class="mypage-info">
              <!-- //orange -->
              <div class="top-section">
                <!-- //green1 -->
                <div class="profile-image">
                  <p>프로필사진</p>
                </div>
  
                <!-- //green2 -->
                <div class="user-info">
                  <!-- //yellow1 -->
                  <ul>
                    <li class="user-Id">
                      <p>반갑습니다 ${login.userId}님</p></li>
                  </ul>
                  <ul>
                    <li class="user-grade">
                      <p>고객님은 ${login.userGrade}입니다</p></li>
                  </ul>
                </div>
  
              </div>
  
              <!-- //orange -->
              <div class="bottom-section">
                <!-- //green1 -->
                <div class="user-point">
                  <h1>My Point</h1>
                  <div class="user-point">
                    <p>${login.userPoint}점 입니다</p>
                  </div>
                  <ul class="how-to-get-point"> 
                    포인트 산정방법
                    <li class="list">1. 영화 리뷰 작성 시 포인트 100점</li>
                    <li class="list">2. 영화 리뷰 연속 5개 작성 시 포인트 200점</li>
                    <li class="list">3. 영화 좋아요 클릭 시 포인트 20점</li>
                  </ul>
                
                </div>
  
                <!-- //green2 -->
                <div class="my-review">
                  <h1>내가 쓴 글</h1>
                  <ul class="review-list">
                    <c:forEach var="review" items="${reviewList}">
                      <li class="my-review">${review.reviewContent}</li>
                    </c:forEach>
                  </ul>
                </div>
  
                <!-- //green3 -->
                <div class="my-movie-list">
                  <h1>영화 찜한 목록</h1>
                  <ul class="movie-list">
                    <c:forEach var="interest" items="${interestList}">
                      <li class="my-movie">${interest.movieTitle}</li>
                    </c:forEach>
                  </ul>
                </div>
  
              </div>
  
            </div>
  
  
          </div>
        </div>
  
        </div>
      </div>
  
  
  
  
    </div>
    <div class="cl">&nbsp;</div>
    </div>
    <div id="footer">
      <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
      <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
      <div style="clear:both;"></div>
    </div>
    </div>
    <!-- END PAGE SOURCE -->
  
  
  </body>
  </html>
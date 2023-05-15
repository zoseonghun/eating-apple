<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
</head>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">



    <!-- header -->
    <div id="header">
        <h1 id="logo"><a href="#">MovieHunter</a></h1>
        <div id="navigation">
            <ul>
                <li><a class="active" href="#">HOME</a></li>
                <li><a href="/movies/list">MOVIES</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
        </div>
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



    <!-- main -->
    <div id="main">
        <div id="content-first">
            <div class="box">
                <div class="head">
                    <h2>│ <span>NEW & UPCOMMING MOVIES</span></h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>
                <!-- for문으로 넣어야함(영화 6개만 들어가고 마지막 for문에는 <div class="movie last">로 추가해야함) -->
                <!--
                <div class="movie">
                  <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                    <a href="#">
                      <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                    </a>
                  </div>
                  <div class="rating">
                    <div class="rating-apple ">
                      <img src="/assets/img/apple.png" alt="#">
                    </div>
                    <p>86%</p>
                    <span class="comments">35</span>
                  </div>
                </div>
                -->
                <div class="movie">
                    <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                        <a href="#">
                            <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                        </a>
                    </div>
                    <div class="rating">
                        <div class="rating-apple ">
                            <img src="/assets/img/apple.png" alt="#">
                        </div>
                        <p>86%</p>
                        <span class="comments">35</span>
                    </div>
                </div>
                <div class="cl">&nbsp;</div>
            </div>
            <div class="box-slide-button">
                <button class="left-button">〈</button>
                <button class="right-button">〉</button>
            </div>
        </div>
        <div id="content-second">
            <div class="box">
                <div class="head">
                    <h2>│ <span>NEW & UPCOMMING MOVIES</span></h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>
                <!-- for문으로 넣어야함(영화 6개만 들어가고 마지막 for문에는 <div class="movie last">로 추가해야함) -->
                <!--
                <div class="movie">
                  <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                    <a href="#">
                      <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                    </a>
                    </div>
                  <div class="rating">
                    <div class="rating-apple ">
                      <img src="/assets/img/apple.png" alt="#">
                    </div>
                    <p>86%</p>
                    <span class="comments">35</span>
                  </div>
                </div>
                -->
                <div class="movie">
                    <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                        <a href="#">
                            <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                        </a>
                    </div>
                    <div class="rating">
                        <div class="rating-apple ">
                            <img src="/assets/img/apple.png" alt="#">
                        </div>
                        <p>86%</p>
                        <span class="comments">35</span>
                    </div>
                </div>
                <div class="cl">&nbsp;</div>
            </div>
            <div class="box-slide-button">
                <button class="left-button">〈</button>
                <button class="right-button">〉</button>
            </div>
        </div>
        <div id="content-third">
            <div class="box">
                <div class="head">
                    <h2>│ <span>NEW & UPCOMMING MOVIES</span></h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>
                <!-- for문으로 넣어야함(영화 6개만 들어가고 마지막 for문에는 <div class="movie last">로 추가해야함) -->
                <!--
                <div class="movie">
                  <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                    <a href="#">
                      <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                    </a>
                    </div>
                  <div class="rating">
                    <div class="rating-apple ">
                      <img src="/assets/img/apple.png" alt="#">
                    </div>
                    <p>86%</p>
                    <span class="comments">35</span>
                  </div>
                </div>
                -->
                <div class="movie">
                    <div class="movie-image">
                    <span class="play">
                      <span class="name">X-MAN</span>
                    </span>
                        <a href="#">
                            <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="" />
                        </a>
                    </div>
                    <div class="rating">
                        <div class="rating-apple ">
                            <img src="/assets/img/apple.png" alt="#">
                        </div>
                        <p>86%</p>
                        <span class="comments">35</span>
                    </div>
                </div>
                <div class="cl">&nbsp;</div>
            </div>
            <div class="box-slide-button">
                <button class="left-button">〈</button>
                <button class="right-button">〉</button>
            </div>
        </div>
        <div id="news">
            <div class="head">
                <h3>│ MOST POPULAR MOVIES</h3>
                <p class="text-right"><a href="#">See all</a></p>
            </div>
            <div class="content">
                <ul class="movie-list">
                    <!-- for문으로 넣어야함 -->
                    <!--
                    <li>
                      <div class="movie-list-title">
                        <h4>해리포터와 마법사의돌</h4>
                      </div>
                      <div class="movie-list-rating-apple">
                        <img src="/assets/img/xapple.png" alt="#">
                      </div>
                      <div class="movie-list-rating">
                        <p>97%</p>
                      </div>
                    </li>
                    -->
                    <li>
                        <div class="movie-list-title">
                            <h4>해리포터와 마법사의돌</h4>
                        </div>
                        <div class="movie-list-rating-apple">
                            <img src="/assets/img/xapple.png" alt="#">
                        </div>
                        <div class="movie-list-rating">
                            <p>97%</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="coming">
            <div class="head">
                <h3>│ POPLUALR STREAMING MOVIES<strong>!</strong></h3>
                <p class="text-right"><a href="#">See all</a></p>
            </div>
            <div class="content">
                <ul class="movie-list">
                    <!-- for문으로 넣어야함 -->
                    <!--
                    <li>
                      <div class="movie-list-title">
                        <h4>트랜스포머 전쟁의서막</h4>
                      </div>
                      <div class="movie-list-rating-apple">
                        <img src="/assets/img/apple.png" alt="#">
                      </div>
                      <div class="movie-list-rating">
                        <p>97%</p>
                      </div>
                    </li>
                    -->
                    <li>
                        <div class="movie-list-title">
                            <h4>트랜스포머 전쟁의서막</h4>
                        </div>
                        <div class="movie-list-rating-apple">
                            <img src="/assets/img/apple.png" alt="#">
                        </div>
                        <div class="movie-list-rating">
                            <p>97%</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="cl">&nbsp;</div>
        </div>
        <div class="cl">&nbsp;</div>
    </div>


    <!-- footer -->
    <div id="footer">
        <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
        <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
        <div style="clear:both;"></div>
    </div>
</div>
<!-- END PAGE SOURCE -->
</body>

</html>
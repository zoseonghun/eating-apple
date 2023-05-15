<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>


<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/detail.css" type="text/css" media="all" />

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
                <li><a href="/movies/test">MOVIES</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
        </div>
        <div id="sub-navigation">
            <ul>
                <!-- 장르 카테고리 -->
                <li><a href="#">GUARDIANS OF THE GALAXY VOL. 3</a></li>
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
    <div id="main" class="main-box">
        <div class="video-box">
            <div class="video-container">
                <iframe src="https://www.youtube.com/embed/u3V5KDHRQvk" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>
        <div class="detail-post-rank-box">
            <div class="detail-post">
                <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="#">
            </div>
            <div class="detail-rank">
                <div class="rank-box-title">
                    <h2>GUARDIANS OF THE GALAXY VOL. 3</h2>
                    <p>run time 2h 30m</p>
                </div>
                <div class="rank-box-ranks">
                    <div class="rank">
                        <img src="/assets/img/apple.png" alt="#">
                        <h3>사소한 평가</h3>
                    </div>
                    <div class="rank-num-box">
                        <p>86%</p>
                    </div>
                    <div class="like">
                        <img src="/assets/img/like-httpswww.flaticon.com.png" alt="#">
                        <h3>LIKE</h3>
                    </div>
                    <div class="like-num-box">
                        <p>158♥</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="movie-detail-box">
            <div class="movie-detail-subname">
                <p><span>│</span> MOVIE INFO</p>
            </div>
            <div><span>In Marvel Studios "Guardians of the Galaxy Vol. 3" our beloved band of misfits are looking a
                        bit
                        different these days. Peter Quill, still reeling from the loss of Gamora, must rally his team
                        around
                        him to defend the universe along with protecting one of their own. A mission that, if not
                        completed
                        successfully, could quite possibly lead to the end of the Guardians as we know them.</span>
            </div>
            <div>
                <p>관람가: <span>PG-13 (Intense Sequences of Violence|Action|Strong Language|Suggestive/Drug</span></p>
            </div>
            <div>
                <p>장르: <span>Sci-fi, Adventure, Action, Fantasy, Comedy</span></p>
            </div>
            <div>
                <p>감독: <span>James Gunn</span></p>
            </div>
            <div>
                <p>런타임: <span>2h 30m</span></p>
            </div>
        </div>
        <div class="movie-detail-ranks-box">
            <div class="movie-detail-subname">
                <p><span>│</span> CRITIC REVIEWS FOR GUARDIANS OF THE GALAXY VOL. 3</p>
            </div>
            <div class="movie-detail-main-rank">
                <!-- 반복 시작 부분 -->
                <!-- 이부분 평가 반복 하면됨 -->
                <!--
                    <div class="movie-detail-rate-containier">
                    <div class="speech-bubble">
                        <div class="movie-detail-icon-text-box">
                            <div class="movie-detail-rate-icon">
                                <img src="/assets/img/apple.png" alt="">

                            </div>
                            <div class="movie-detail-rate-text">
                                <span>
                                    Guardians 3 is a real warm and fuzzy movie that sometimes makes you forget that
                                    you’re a bit bored with the onslaught of superhero movies.
                                </span>
                            </div>
                        </div>
                        <div class="movie-detail-rate-time-like-box">
                            <div class="movie-detail-rate-time-box">
                                <p>
                                    <span> May 14, 2023</span> |<span> Rating: 3.5/5</span>
                                </p>
                            </div>
                            <div class="movie-detail-rate-like-box">
                                <img src="/assets/img/star.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="movie-detail-rate-writer">
                        <div class="writer-name-score-box">
                            <div class="writer-name">
                                <span>
                                    kimhorang2001
                                </span>
                            </div>
                            <div class="writer-score">
                                <span>
                                    324
                                </span>
                            </div>
                        </div>
                        <div class="writer-score-icon">
                            <img src="/assets/img/crown.png" alt="">
                        </div>
                    </div>
                </div>
             -->


                <!-- 반복 끝부분-->
            </div>

        </div>

    </div>
    <!--  MAIN END  -->

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
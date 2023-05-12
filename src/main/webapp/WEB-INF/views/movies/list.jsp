<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/list.css" type="text/css" media="all" />
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
                <li><a href="#">MOVIES</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
        </div>
        <div id="sub-navigation">
            <ul>
                <li><a href="#">액션/느와르</a></li>
                <li><a href="#">SF/판다지</a></li>
                <li><a href="#">스릴러/호러</a></li>
                <li><a href="#">코미디/휴먼</a></li>
                <!-- 장르 카테고리 -->
                <!-- <li>
                  <div class="custom-select">
                    <select id="genre-select1">
                      <option value="" disabled selected>장르선택</option>
                      <option value="option1">옵션 1</option>
                      <option value="option2">옵션 2</option>
                      <option value="option3">옵션 3</option>
                    </select>
                  </div>
                </li>
                <li>
                  <div class="custom-select">
                    <select id="genre-select2">
                      <option value="" disabled selected>장르선택</option>
                      <option value="option1">옵션 1</option>
                      <option value="option2">옵션 2</option>
                      <option value="option3">옵션 3</option>
                    </select>
                  </div>
                </li>
                <li>
                  <div class="custom-select">
                    <select id="genre-select2">
                      <option value="" disabled selected>장르선택</option>
                      <option value="option1">옵션 1</option>
                      <option value="option2">옵션 2</option>
                      <option value="option3">옵션 3</option>
                    </select>
                  </div>
                </li>
                <li>
                  <div class="custom-select">
                    <select id="genre-select2">
                      <option value="" disabled selected>장르선택</option>
                      <option value="option1">옵션 1</option>
                      <option value="option2">옵션 2</option>
                      <option value="option3">옵션 3</option>
                    </select>
                  </div>
                </li> -->
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
        <div class="movie-sub-list">
            <h2>NEW & UPCOMMING MOVIES</h2>
        </div>
        <div class="movie-poster">
<%--            for문 사용하면됨--%>
<%--            <a href="#">--%>
<%--                <div class="poster-box">--%>
<%--                    <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="">--%>
<%--                    <p>블랙펜서</p>--%>
<%--                </div>--%>
<%--            </a>--%>
            <a href="#">
                <div class="poster-box">
                    <img src="http://t1.daumcdn.net/movie/5f7b32312bf50ffdd7d6ec57523cf0e0d19f60a7" alt="">
                    <p>블랙펜서</p>
                </div>
            </a>

        </div>



        <div class="poster-paging parent">
            <ul class="pagination">
                <li class="prev">이전</li>
                <li class="page">1</li>
                <li class="page">2</li>
                <li class="page">3</li>
                <li class="page">4</li>
                <li class="page">5</li>
                <li class="page">6</li>
                <li class="next">다음</li>
            </ul>
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
<script>
    // 드롭박스 사용시 GET요청할곳
    // const selectElement = document.getElementById("genre-select");
    // selectElement.addEventListener("change", function() {
    //   const selectedOption = this.options[this.selectedIndex];
    //   const selectedValue = selectedOption.value;
    //   // 여기에 선택된 옵션에 대한 처리 (GET 요청 등) 추가 가능
    // });
</script>
</body>

</html>
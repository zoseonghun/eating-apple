<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <%@ include file="../include/header.jsp" %>
    <div id="sub-navigation">
      <ul>
        <li><a href="#">액션/느와르</a></li>
        <li><a href="#">SF/판다지</a></li>
        <li><a href="#">스릴러/호러</a></li>
        <li><a href="#">코미디/휴먼</a></li>

      </ul>
      <div id="search">
        <form action="/movies/list" method="get" accept-charset="utf-8">

          <select class="form-select" name="type" id="search-type">
            <option value="title">제목</option>
            <option value="director">감독</option>
          </select>

          <label for="search-field">SEARCH</label>
          <input type="text" name="keyword" placeholder="Enter search here" id="search-field" class="blink search-field"
            value="${s.keyword}" />
          <input type="submit" value="GO!" class="search-button" />
        </form>
      </div>
    </div>
  </div>
  <!-- header end-->

  <!-- main -->
  <div id="main">

    <!-- 영화 슬라이드 시작 부분 -->
    <div class="main-movie-slide-container">
      <!--1번 영화 슬라이드 시작 부분 -->
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

      <!-- 1번 영화 슬라이드 끝 부분 -->


      <div class="movie-sub-list">
        <h2>NEW & UPCOMMING MOVIES</h2>
      </div>
      <div class="movie-poster">

        <c:forEach var="m" items="${mList}">
          <a href="/movies/detail?mno=${m.movieNum}">
            <div class="poster-box">
              <img src="${m.imgUrl}">
              <p>${m.movieTitle}</p>
            </div>
          </a>
        </c:forEach>

      </div>


      <div class="poster-paging parent">
        <ul class="pagination">
          <c:if test="${maker.prev}">
            <li class="prev page-item"><a class="page-link"
                href="/movies/list?pageNo=${maker.begin - 1}&type=${s.type}&keyword=${s.keyword}">prev</a>
            </li>
          </c:if>
          <!-- <li data-page-num="1" class="page-item"><a class="page-link" href="/movies/list?pageNo=1">1</a></li> -->

          <c:forEach var="i" begin="${maker.begin}" end="${maker.end}">
            <li data-page-num="${i}" class="page-item">
              <a class="page-link"
                href="/movies/list?pageNo=${i}&type=${s.type}&keyword=${s.keyword}">&nbsp;${i}&nbsp;</a>
            </li>
          </c:forEach>

          <c:if test="${maker.next}">
            <li class="next page-item"><a class="page-link"
                href="/movies/list?pageNo=${maker.end + 1}&type=${s.type}&keyword=${s.keyword}">next</a>
            </li>
          </c:if>
        </ul>
      </div>


      <div class="cl">&nbsp;</div>
    </div>
    <!-- main end-->


    <!-- footer -->
    <%@ include file="../include/footer.jsp" %>
    <!-- footer end-->
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

    function fixSearchOption() {
      const $select = document.getElementById('search-type');

      for (let $opt of [...$select.children]) {
        if ($opt.value === '${s.type}') {
          $opt.setAttribute('selected', 'selected');
          break;
        }
      }
    }
    
    function horizonList() {

      fetch('/movies/main')
        .then(res => res.json())
        .then(result => {
            showList(result);
        });
    }

    function showList({numList, scoreList}) {
        for (let n of numList) {
          const {movieNum, movieTitle, movieScore, imgUrl} = n;
          console.log(movieTitle);
        }
    }
    // appendPageActive();

    (function(){
      horizonList();
    })();
  </script>
</body>

</html>
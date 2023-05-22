<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>

<head>
  <title>MovieHunter</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  
  <link rel="stylesheet" href="/assets/css/list.css">
  <link rel="stylesheet" href="/assets/css/style.css">
  
  <link rel="stylesheet" href="/owlcarousel/owl.carousel.min.css">
  <link rel="stylesheet" href="/owlcarousel/owl.theme.default.min.css">


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="/owlcarousel/owl.carousel.min.js"></script>

</head>

<body>
  
  <!-- START PAGE SOURCE -->
  <div id="shell">

    <!-- header -->
    <%@ include file="../include/header.jsp" %>
    <div id="sub-navigation">
      <!-- <ul>
        <li><a href="#">액션/느와르</a></li>
        <li><a href="#">SF/판다지</a></li>
        <li><a href="#">스릴러/호러</a></li>
        <li><a href="#">코미디/휴먼</a></li>

      </ul> -->
      <div id="search">
        <form action="/movies/list" method="get" accept-charset="utf-8">          

          <label for="search-field">SEARCH</label>
          <!-- <select class="form-selected" name="type" id="search-type">
            <option value="title">제목</option>
            <option value="director">감독</option>
          </select> -->
          <select class="form-select" name="type" id="search-type">            
            <option value="title">제목</option>
            <option value="director">감독</option>            
          </select>
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

<!-- 
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item size-box active">
          <img src="${topTenList[1].imgUrl}" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item size-box">
          <img
            src="https://marketplace.canva.com/EADxVVGbAJs/3/0/1131w/canva-%EB%B9%A8%EA%B0%84%EC%83%89-%EB%B6%93%EC%9E%90%EA%B5%AD-%ED%9D%91%EB%B0%B1-%EC%82%AC%EC%A7%84-%EA%B7%B8%EB%9F%B0%EC%A7%80%ED%95%9C-%EC%97%AC%EC%9E%90-%EC%98%81%ED%99%94-%ED%8F%AC%EC%8A%A4%ED%84%B0-xcIVqgNWjxg.jpg"
            class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item size-box">
          <img src="https://ojsfile.ohmynews.com/STD_IMG_FILE/2022/0328/IE002962159_STD.jpg" class="d-block w-100"
            alt="...">
        </div>
      </div>
    </div> -->

    <div class="owl-carousel owl-theme">
      <c:forEach var="top" items="${topTenListByNum}">
        <div class="item">
          <a href="/movies/detail?mno=${top.movieNum}" ><img src="${top.imgUrl}"></a>
          <div class="title-score"><div>${top.movieTitle}</div> <div>${top.movieScore}</div></div>
        </div>      
      </c:forEach>
    </div>
    <div class="owl-carousel owl-theme">
      <c:forEach var="top" items="${topTenListByScore}">
        <div class="item">
          <a href="/movies/detail?mno=${top.movieNum}" ><img src="${top.imgUrl}"></a>
          <div class="title-score"><div>${top.movieTitle}</div> <div>${top.movieScore}</div></div>
        </div>      
      </c:forEach>
    </div>

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


    <div class="poster-paging parents">
      <ul class="paginations">
        <c:if test="${maker.prev}">
          <li class="prevs page-items"><a class="page-a"
              href="/movies/list?pageNo=${maker.begin - 1}&type=${s.type}&keyword=${s.keyword}">prev</a>
          </li>
        </c:if>
        <!-- <li data-page-num="1" class="page-item"><a class="page-link" href="/movies/list?pageNo=1">1</a></li> -->

        <c:forEach var="i" begin="${maker.begin}" end="${maker.end}">
          <li data-page-num="${i}" class="page-links">
            <a class="page-a" href="/movies/list?pageNo=${i}&type=${s.type}&keyword=${s.keyword}">&nbsp;${i}&nbsp;</a>
          </li>
        </c:forEach>

        <c:if test="${maker.next}">
          <li class="nexts page-items"><a class="page-a"
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

  <!-- END PAGE SOURCE -->

  <script>
    $(document).ready(function () {
      $(".owl-carousel").owlCarousel({
        items: 3,
        margin: 20,
        height: 300,
        loop:true,
        navText: ['이전', '다음'],
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true
      });
    });
    // function horizonList() {

    //   fetch('/movies/main')
    //     .then(res => res.json())
    //     .then(result => {
    //       showList(result);
    //     });
    // }

    // function showList({
    //   numList,
    //   scoreList
    // }) {
    //   for (let n of numList) {
    //     const {
    //       movieNum,
    //       movieTitle,
    //       movieScore,
    //       imgUrl
    //     } = n;
    //     console.log(movieTitle);
    //   }
    // }
    // appendPageActive();

    // (function () {
    //   horizonList();
    // })();
  </script>
</body>

</html>
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
          <form action="/movies/list" method="get" accept-charset="utf-8">

            <select class="form-select" name="type" id="search-type">
              <option value="title">제목</option>
              <option value="director">감독</option>              
            </select>
            
            <label for="search-field">SEARCH</label>
            <input type="text" name="keyword" placeholder="Enter search here" id="search-field"
              class="blink search-field" value="${s.keyword}" />
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
                href="/movies/list?pageNo=${maker.begin - 1}&type=${s.type}&keyword=${s.keyword}">prev</a></li>
          </c:if>
          <!-- <li data-page-num="1" class="page-item"><a class="page-link" href="/movies/list?pageNo=1">1</a></li> -->

          <c:forEach var="i" begin="${maker.begin}" end="${maker.end}">
            <li data-page-num="${i}" class="page-item">
              <a class="page-link" href="/movies/list?pageNo=${i}&type=${s.type}&keyword=${s.keyword}">&nbsp;${i}&nbsp;</a>
            </li>
          </c:forEach>

          <c:if test="${maker.next}">
            <li class="next page-item"><a class="page-link"
                href="/movies/list?pageNo=${maker.end + 1}&type=${s.type}&keyword=${s.keyword}">next</a></li>
          </c:if>
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

    function fixSearchOption() {
            const $select = document.getElementById('search-type');

            for (let $opt of [...$select.children]) {
                if ($opt.value === '${s.type}') {
                    $opt.setAttribute('selected', 'selected');
                    break;
                }
            }
        }

        appendPageActive();
  </script>
</body>

</html>
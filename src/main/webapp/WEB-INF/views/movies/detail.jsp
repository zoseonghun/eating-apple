<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>MovieHunter</title>
</head>

<body>
    <h1>여기 왜 안와~</h1>
    <ul>
      <li>${detail.title}</li>
      <li>${detail.info}</li>
      <li>${detail.runtime}</li>
      <li>${detail.director}</li>
      <li>${detail.genre}</li>
      <li>${detail.age}</li>
      <li>${detail.score}</li>
    </ul>
    <c:forEach var="imgList" items="${detail.movieImgList}" >
      
      <c:if test="${imgList.imgName == 'youtube'}">
        <h2>${imgList.imgUrl}</h2>  
      </c:if>
      <c:if test="${imgList.imgName != 'youtube'}">
        <h1>${imgList.imgNum}</h1>
      </c:if>
    </c:forEach>

    <div class="test">

      
    </div>
    <script>

      const movieNum = '${detail.movieNum}';

      const url = '/api/v1/rates';

      function rateList() {        
        



      }

      

    </script>
</body>

</html>
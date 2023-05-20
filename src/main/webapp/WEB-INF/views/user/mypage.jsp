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
                                ${data.user_id}님 반갑습니다
                            </div>
                            <div class="mybasic-info">
                                <div class="profile-image">
                                    <!-- <p>프로필사진</p> -->
                                </div>

                                <div class="usergrade">
                                    ${data.user_id}님의 등급은 ${data.user_grade} 입니다
                                </div>

                                <div class="mypoint">
                                    <div class="mycoupon">
                                        <p>나의 포인트</p>
                                        <p>${data.user_point}점</p>
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
                                        <p id="myreview">내가 쓴 리뷰</p>
                                        <p id="interestmoview">관심 영화 목록</p>
                                    </div>

                                    <div class="mydetail-contents">
                                        <div class="mydetail-myreview">
                                            <p>내용</p>

                                            <%-- 리뷰 데이터를 표시할 위치 --%>
                                            <div id="review-container">
                                                <c:if test="${not empty reviews}">
                                                    <c:forEach items="${reviews}" var="review">
                                                        <p>${review.userNum}</p>
                                                        <p>${review.rateNum}</p>
                                                        <p>${review.movieNum}</p>
                                                        <p>${review.rateReview}</p>
                                                        <p>${review.rateScore}</p>
                                                        <p>${review.rateDate}</p>
                                                        <p>${review.rateLike}</p>
                                                        
                                                    </c:forEach>
                                                </c:if>
                                            </div>

                                            <%-- 관련영화목록 데이터를 표시할 위치 --%>
                                            <div id="interest-container">
                                                <c:if test="${not empty interests}">
                                                    <c:forEach items="${interests}" var="interest">
                                                        <p>${interest.userNum}</p>
                                                        <p>${interest.movieNum}</p>
                                                        <p>${interest.movieTitle}</p>
                                                        <p>${interest.imgUrl}</p>                                                    
                                                    </c:forEach>
                                                </c:if>
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
    </div>

    <script>

// //유저정보 가져오기
// function fetchUserInfo() {
//     const userId = "유저1"; 
//     const reviewContainer = document.querySelector('#review-container');

//     fetch(`/mypage/${userId}`) // 실제 경로에 맞게 수정
//         .then(response => response.json())
//         .then(data => {
//             // 유저1의 정보를 화면에 표시
//             document.querySelector('.mypage-id').textContent = `${data.user_id}님 반갑습니다`;
//             document.querySelector('.usergrade').textContent = `${data.user_id}님의 등급은 ${data.user_grade}입니다`;
//             document.querySelector('.mycoupon p:last-child').textContent = `${data.user_point}점`;

//             // 리뷰 데이터 표시
//             if (Array.isArray(data.reviews)) {
//                 data.reviews.forEach(review => {
//                     const reviewElement = document.createElement('p');
//                     reviewElement.textContent = review.rate_review;
//                     reviewContainer.appendChild(reviewElement);
//                 });
//             }
//         })
//         .catch(error => {
//             console.log('유저 정보를 가져오는 중 오류가 발생했습니다.', error);
//         });
// }

// // 페이지 로드 시 유저 정보를 가져와 실행되는 함수
// window.onload = function() {
//     fetchUserInfo(); // 유저 정보를 가져와 화면에 표시
// }






        // 아래 hover 박스 클릭시 발생되는 이벤트 작성

        document.querySelector('.top-button-tag').onclick = e => {
    console.log('클릭: ', e.target);

    if (e.target.matches('#myreview')) {
        console.log('리뷰 부르기~');
        const userNum = 1; // 사용자 번호

        fetch(`/review/${userNum}`) // URL 경로를 "/review/{userNum}"로 수정
            .then(response => response.json())
            .then(data => {
                // 데이터를 표시할 HTML 요소 선택
                const reviewContainer = document.querySelector('#review-container'); // 선택자 수정

                // 데이터를 HTML에 추가
                if (Array.isArray(data)) {
                    data.forEach(review => {
                        const reviewElement = document.createElement('p');  
                        reviewContainer.appendChild(reviewElement);
                    });
                } else {
                    // 데이터가 배열이 아닌 경우 처리
                    console.log('데이터가 유효하지 않습니다.');
                }
            })
            .catch(error => {
                console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
            });
    }
 
};


// 관심 영화 목록 가져오기
document.querySelector('.top-button-tag').onclick = e => {
    console.log('클릭: ', e.target);

    if (e.target.matches('#interestmoview')) {
        console.log('관련영화목록~');
        const userNum = 1; // 사용자 번호

        fetch(`/interest/${userNum}`) 
            .then(response => response.json())
            .then(data => {
                const interestContainer = document.querySelector('#interest-container');

                // 데이터를 HTML에 추가
                if (Array.isArray(data)) {
                    data.forEach(interest => {
                        const interestElement = document.createElement('p');
                        // interestElement.textContent = interest.movieTitle;
                        interestContainer.appendChild(interestElement);
                    });
                } else {
                    console.log('데이터가 유효하지 않습니다.');
                }
            })
            .catch(error => {
                console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
            });
    }
};

// // 관심 영화 목록 가져오기
// document.querySelector('.top-button-tag').onclick = e => {
//     console.log('클릭: ', e.target);

//     if (e.target.matches('#interestmoview')) {
//         console.log('관련영화목록~');
//         const userNum = 1; // 사용자 번호

//         fetch(`/interest/${userNum}`) // URL 경로를 "/review/{userNum}"로 수정
//             .then(response => response.json())
//             .then(data => {
//                 // 데이터를 표시할 HTML 요소 선택
//                 const reviewContainer = document.querySelector('#interest-container'); // 선택자 수정

//                 // 데이터를 HTML에 추가
//                 if (Array.isArray(data)) {
//                     data.forEach(review => {
//                         const reviewElement = document.createElement('p');
//                         reviewElement.textContent = review.rateReview; // rate_review 대신 rateReview로 수정
//                         reviewContainer.appendChild(reviewElement);
//                     });
//                 } else {
//                     // 데이터가 배열이 아닌 경우 처리
//                     console.log('데이터가 유효하지 않습니다.');
//                 }
//             })
//             .catch(error => {
//                 console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
//             });
//     }
 
// };


</script>



    </script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>사소한 사과 마이페이지</title>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="/assets/css/common-new.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/mypage-info.css" type="text/css" media="all" />
    <script></script>
    <title>Document</title>
    <style>
        .rating {
            display: inline-block;
        }

        .rating input {
            display: none;
        }

        .rating label {
            float: right;
            cursor: pointer;
            color: gray;
        }

        .rating label:before {
            content: '\2605';
            font-size: 30px;
        }

        .rating input:checked~label {
            color: orange;
        }

        -->.modal {
            display: none;
            /* 처음에는 숨김 상태로 설정 */
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            /* 반투명한 배경 */
        }

        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
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




                <!-- 모달 창 -->
                <!-- <div id="myModal" class="modal">
                    <div class="modal-content">
                        <!-- 모달 내용 -->
                <!-- <h2>모달 내용</h2>
                        <p>모달 내용의 설명이 들어갑니다.</p> -->
                <!-- 닫기 버튼 -->
                <!-- <span class="close">&times;</span>
                    </div>
                </div>  -->


                <!-- rate-modal  -->
                <!-- <%@ include file="../include/create-rate-modal.jsp" %> -->
                <div id="myModal" class="modal">
                    <div class="modal-content">
                        <form method="POST" action="/submit">
                            <div class="modal-top-box">
                                <div class="modal-top-rate-icon-box">

                                    <!-- <img src="/assets/img/xapple.png" alt="#" id="modal-rate-icon"> -->

                                </div>
                                <div class="modal-top-rate-input-box">
                                    <div class="rating">
                                        <input type="radio" id="star5" name="rating" value="5">
                                        <label for="star5"></label>
                                        <input type="radio" id="star4" name="rating" value="4">
                                        <label for="star4"></label>
                                        <input type="radio" id="star3" name="rating" value="3">
                                        <label for="star3"></label>
                                        <input type="radio" id="star2" name="rating" value="2">
                                        <label for="star2"></label>
                                        <input type="radio" id="star1" name="rating" value="1">
                                        <label for="star1"></label>
                                    </div>

                                </div>
                                <div class="modal-top-md-box">
                                    <div class="modal-top-modify-box">
                                        <a id="modal-modify" href="#">수 정</a>
                                    </div>
                                    <div class="modal-top-delete-box">
                                        <a href="#">삭 제</a>
                                    </div>
                                </div>
                                <div class="modal-tot-close-button-box">
                                    <span class="close">&times;</span>
                                </div>
                            </div>
                            <div class="modal-middle-box">
                                <div class="modal-middle-rate-content-box">
                                    <textarea name="modal-content" id="modal-content" cols="30" rows="10"></textarea>

                                    <!-- <input type="text" id="rate-content" class="rate-content"> -->

                                </div>
                            </div>
                            <div class="modal-bottom-box">
                                <div class="modal-bottom-left-box">
                                    <div class="modal-bottom-movie-title-box">
                                        <span class="modal-movie-title">${detail.movieTitle}</span>
                                    </div>
                                    <div class="modal-bottom-writer-info-box">
                                        <div class="modal-bottom-writer-profile-box">
                                            <c:if test="${login.sprofileimage != null}">

                                                <!-- <img src="/assets/img/people-httpswww.flaticon.com.png" alt=""> -->
                                            </c:if>

                                        </div>
                                        <div class="modal-bottom-writer-id-score-box">
                                            <div class="modal-bottom-writer-id-box"><span>${login.suserid}</span></div>
                                            <div class="modal-bottom-writer-score-box"><span>${login.suserpoint}점</span>
                                            </div>
                                        </div>
                                        <div class="modal-bottom-writer-score-icon-box">
                                            <c:if test="${login.susergrade == 'BASIC'}">

                                                <!-- <img src="/assets/img/basicmedal.png" alt="#">-->

                                            </c:if>
                                            <c:if test="${login.susergrade == 'GOLD'}">
                                                <!-- <img src="/assets/img/goldmedal.png" alt="#"> -->
                                            </c:if>
                                            <c:if test="${login.susergrade == 'VIP'}">
                                                <!-- <img src="/assets/img/quality.png" alt="#"> -->
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-bottom-right-box">
                                    <div class="modal-bottom-like-box">
                                        <div class="modal-bottom-like-icon-box">
                                            <!-- <img src="/assets/img/love-httpswww.flaticon.com.png" alt=""> -->
                                        </div>
                                        <div class="modal-bottom-like-num-box">
                                            <span>${detail.likeCount}</span>
                                        </div>
                                    </div>
                                    <div class="modal-bottom-save-button-box">
                                        <button id="modal-save" type="button" class="modal-save-button">저 장</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div> -
                <!-- rate-modal end -->








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


                                            <%-- 리뷰 데이터를 표시할 위치 --%>
                                            <div id="review-finalBox">
                                                <c:if test="${not empty reviews}">
                                                    <c:forEach items="${reviews}" var="review">
                                                        <div class="review-container">
                                                            <div class="review-box">
                                                                <p class="r-movieTitle">${review.movieTitle}</p>
                                                                <p class="r-rateReview">${review.rateReview}</p>
                                                                <p class="r-rateScore">${review.rateScore}</p>
                                                                <p class="r-rateLike">${review.rateLike}</p>
                                                                <p class="r-rateDate">${review.rateDate}</p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </c:if>
                                            </div>

                                            <%-- 관련영화목록 데이터를 표시할 위치 --%>
                                            <div id="interest-finalBox">
                                                <c:if test="${not empty interestList}">

                                                    <c:forEach items="${interestList}" var="interest">
                                                        <div id="interest-container">
                                                            <div class="interest-box">
                                                                <!-- <p class="i-userNum">${interest.userNum}</p>
                                                                <p class="i-movieNum">${interest.movieNum}</p> -->
                                                                <p class="i-movieTitle">${interest.movieTitle}</p>
                                                                <!-- <p class="i-imgUrl">${interest.imgUrl}</p> -->
                                                                <img src="/assets/img/endgame.jpg" alt="어벤져스">
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </c:if>
                                            </div>


                                        </div>
                                    </div>




                                    <div>
                                        <!-- 이전 버튼 -->
                                        <c:if test="${pageMaker.prev}">
                                            <a
                                                href="/user/review?pageNo=${pageMaker.begin - 1}&amount=${page.amount}">Previous</a>
                                        </c:if>

                                        <!-- 페이지 번호 링크 -->
                                        <c:forEach begin="${pageMaker.begin}" end="${pageMaker.end}" var="pageNum">
                                            <c:choose>
                                                <c:when test="${pageNum eq page.pageNo}">
                                                    <strong>${pageNum}</strong>
                                                </c:when>
                                                <c:otherwise>
                                                    <a
                                                        href="/user/review?pageNo=${pageNum}&amount=${page.amount}">${pageNum}</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>

                                        <!-- 다음 버튼 -->
                                        <c:if test="${pageMaker.next}">
                                            <a
                                                href="/user/review?pageNo=${pageMaker.end + 1}&amount=${page.amount}">Next</a>
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

    <script>

        // 리뷰 모달이벤트
        const reviewContainers = document.querySelectorAll('.review-container');
        reviewContainers.forEach(container => {
            container.addEventListener('click', function () {
                document.getElementById('myModal').style.display = 'block';
            });
        });

        // // 모달 닫기 버튼 클릭 이벤트
        document.querySelector('.close').addEventListener('click', function () {
            document.getElementById('myModal').style.display = 'none';
        });


        document.querySelector('.top-button-tag').onclick = e => {
            console.log('클릭: ', e.target);

            if (e.target.matches('#myreview')) {
                console.log('리뷰 부르기~');
                const userNum = 1; // 사용자 번호

                fetch(`user/review/${1}`)
                    .then(response => response.json())
                    .then(data => {
                        const reviewContainer = document.querySelector('#review-finalBox');
                        reviewContainer.innerHTML = ''; // 기존 데이터 초기화

                        // 데이터를 HTML에 추가
                        if (Array.isArray(data)) {
                            data.forEach(review => {
                                const reviewSet = document.createElement('div');
                                reviewSet.classList.add('review-container');
                                reviewSet.innerHTML = `
                <div class="review-box">
                  <p class="r-movieTitle">${review.movieTitle}</p>
                  <p class="r-rateReview">${review.rateReview}</p>
                  <p class="r-rateScore">${review.rateScore}</p>
                  <p class="r-rateLike">${review.rateLike}</p>
                  <p class="r-rateDate">${review.rateDate}</p>
                </div>
              `;
                                reviewContainer.appendChild(reviewSet);
                            });
                        } else {
                            console.log('데이터가 유효하지 않습니다.');
                        }

                        window.location.href = `/user/review/${1}`;
                    })
                    .catch(error => {
                        console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
                    });
            }
        };



        // 관심 영화 목록 보기
        document.querySelector('.top-button-tag').onclick = e => {
            console.log('클릭: ', e.target);

            if (e.target.matches('#interestmoview')) {
                console.log('관심영화목록~');
                const userNum = 1; // 사용자 번호

                fetch(`user/interest/${1}`)
                    .then(response => response.json())
                    .then(data => {
                        const interestContainer = document.querySelector('#interest-finalBox');
                        interestContainer.innerHTML = ''; // 기존 데이터 초기화

                        // 데이터를 HTML에 추가
                        if (Array.isArray(data)) {
                            data.forEach(interest => {
                                const interestSet = document.createElement('div');
                                interestSet.classList.add('interest-container');
                                interestSet.innerHTML = ` 
                                
                                <p class="i-movieTitle">${interest.movieTitle}</p>
                                <img src="/assets/img/endgame.jpg" alt="">
                                `
                                interestContainer.appendChild(interestSet);
                            });
                        } else {
                            console.log('데이터가 유효하지 않습니다.');
                        }
                        window.location.href = `/user/interest/${1}`;
                    })
                    .catch(error => {
                        console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
                    });
            }
        };











//         const div = document.querySelector('div');

// // 이전 버튼 생성 여부 확인 및 이벤트 바인딩
// if (${pageMaker.prev}) {
//     const prevLink = document.createElement('a');
//     prevLink.href = `/user/review?pageNo=${pageMaker.begin - 1}&amount=${page.amount}`;
//     prevLink.textContent = 'Previous';
//     div.appendChild(prevLink);
// }

// // 페이지 번호 링크 생성
// for (let pageNum = ${pageMaker.begin}; pageNum <= ${pageMaker.end}; pageNum++) {
//     const pageLink = document.createElement('a');
//     if (pageNum === page.pageNo) {
//         const strong = document.createElement('strong');
//         strong.textContent = pageNum;
//         pageLink.appendChild(strong);
//     } else {
//         pageLink.href = `/user/review?pageNo=${pageNum}&amount=${page.amount}`;
//         pageLink.textContent = pageNum;
//     }
//     div.appendChild(pageLink);
// }

// // 다음 버튼 생성 여부 확인 및 이벤트 바인딩
// if (${pageMaker.next}) {
//     const nextLink = document.createElement('a');
//     nextLink.href = `/user/review?pageNo=${pageMaker.end + 1}&amount=${page.amount}`;
//     nextLink.textContent = 'Next';
//     div.appendChild(nextLink);
// }

    </script>



</body>

</html>
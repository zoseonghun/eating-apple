<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/mypage-info.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/create-rate-modal.css" type="text/css" media="all" />
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
            /* width: 80%; */
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
            <!-- 로고 추가 수정 -->
            <h1 id="logo"><a href="/movies/list"><img src="/assets/img/logo4.png" alt=""></a></h1>
            <!-- 로고 추가 수정 -->
            <div id="navigation">
                <ul>
                    <c:if test="${login == null}">

                        <li class="header-li header-li-home"><a href="/movies/list">HOME</a></li>
                        <li class="header-li"><a href="/user/login">로그인</a></li>
                        <li class="header-li"><a href="/user/sign-up">회원가입</a></li>
                    </c:if>

                    <c:if test="${login != null}">
                        <li class="header-user-profile-image"><img src="${login.sprofileimage}" alt=""></li>
                        <li class="header-li header-li-user">
                            <p>${login.suserid}님 환영 합니다!!</p>
                        </li>
                        <li class="header-li header-li-home"><a href="/movies/list">HOME</a></li>
                        <li class="header-li"><a href="/user/sign-out">로그아웃</a></li>
                        <li class="header-li"><a href="/user/mypage">마이페이지</a></li>
                    </c:if>

                </ul>
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

                                        <img src="/assets/img/xapple.png" alt="#" id="modal-rate-icon">

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
                                            <a id="modal-modify" href="/user/mypage/${userNum}">저 장</a>
                                        </div>
                                        <div class="modal-top-delete-box">
                                            <a href="/user/mypage/${userNum}">삭 제</a>
                                        </div>
                                    </div>

                                    <div class="modal-tot-close-button-box">
                                        <span class="close">&times;</span>
                                    </div>
                                </div>
                                <div class="modal-middle-box">
                                    <div class="modal-middle-rate-content-box">
                                     
                                        <div class="modal-movie-title">영화 제목</div>
                
                                        <div class="modal-movie-review">영화 리뷰 </div>
                                        <textarea name="modal-content" id="modal-content" cols="20"
                                            rows="10"></textarea>
                                          
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                    <!-- rate-modal end -->








                    <!-- 마이페이지 -->
                    <!-- //blue -->
                    <div class="mypage">
                        <div class="frame">

                            <div class="mypage-info">
                                <div class="mypage-id">
                                    ${login.suserid}님 반갑습니다
                                </div>
                                <div class="mybasic-info">
                                    <div class="profile-image">
                                        <!-- <p>프로필사진</p> -->
                                        <img src="${login.sprofileimage}" alt="#">
                                    </div>

                                    <div class="usergrade">
                                        ${login.suserid}님의
                                        등급은 ${login.susergrade} 입니다

                                    </div>

                                    <div class="mypoint">
                                        <div class="mycoupon">
                                            <p>나의 포인트</p>
                                            <p>${login.suserpoint}점</p>
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
                                            <p id="myreview">내가 작성한 리뷰</p>
                                            <p id="interestmoview">관심 영화 목록</p>
                                        </div>

                                        <div class="mydetail-contents">
                                            <div class="mydetail-myreview">

                                                <%-- 리뷰 데이터를 표시할 위치 --%>
                                                <div id="review-finalBox">
                                                    <c:if test="${not empty reviews}">
                                                        <c:forEach items="${reviews}" var="review">
                                                            <div class="review-container">
                                                                <img src="/assets/img/redapple.png" alt="">
                                                                <div class="review-box" id="reviewBox">
                                                                    <p class="r-movieTitle">영화 제목 : ${review.movieTitle}
                                                                    </p>
                                                                    <p class="r-rateReviewA">평가 내용 :</p>
                                                                    <p class="r-rateReview"> ${review.rateReview}      </p>
                                                                    
                                                                    <p class="r-rateScore">영화 평점 : ${review.rateScore}
                                                                    </p>
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


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>

            //모달
            const reviewFinalBox = document.querySelector('#review-finalBox');
            const modalTextarea = document.getElementById('modal-content');

            reviewFinalBox.onclick = e => {
                console.log(e.target.closest('.review-container'));

                const target = e.target.closest('.review-container');
                const title = target.querySelector('.r-movieTitle').textContent;
                const reviewText = target.querySelector('.r-rateReview').textContent;

                // console.log(title);
                // console.log(reviewText);

                document.getElementById('myModal').style.display = 'block';
                modalTextarea.textContent = `\${reviewText}`;
            };

     


            // 모달 닫기 버튼 클릭 이벤트
            document.querySelector('.close').addEventListener('click', function () {
                document.getElementById('myModal').style.display = 'none';
            });


            // 임시: 얘는 모달창이 열린곳에서 포스트가 넘어가는 기능임 
            function ratePostButton() {
                // 평가 등록 버튼
                const $postBtn = document.getElementById('modal-save');

                $postBtn.onclick = e => {

                    // 유저 id
                    const id = document.getElementById('rate-writer').textContent;
                    // 유저 num
                    const num = document.getElementById('user-num').dataset.un;
                    // 평가 내용
                    const review = document.querySelector('.rate-content').value;
                    // 별점
                    const $starScore = document.querySelectorAll('.rating input[type="radio"]');
                    let selected = 0;

                    $starScore.forEach(target => {
                        if (target.checked) {
                            selected = target.value;
                        }
                    });

                    const payload = {
                        // userNum => 세션 dto에서 가져와야되고                
                        userNum: num,
                        movieNum: mNum,
                        // 입력값 받아오고
                        rateReview: review,
                        // 입력 점수 받아오고
                        rateScore: selected,
                        // 세션에서 받아와야됨
                        userId: id
                    };


                    console.log(payload);

                    const requestInfo = {
                        method: 'POST',
                        headers: {
                            'content-type': 'application/json'
                        },
                        body: JSON.stringify(payload)
                    };

                    fetch(`\${URL}/post`, requestInfo)
                        .then(res => {
                            if (res.status === 200) {
                                alert('평가가 정상적으로 등록되었습니다.');
                                // 등록 모달 닫기

                                $modal.style.display = "none";
                                location.reload();

                                // $rw.value = '';
                            } else {
                                alert('댓글 등록에 실패함!');
                            }
                        });

                }
            }


            // 내가 쓴 리뷰 버튼 클릭
            document.addEventListener('DOMContentLoaded', () => {
                const myReviewButton = document.querySelector('#myreview');
                myReviewButton.onclick = e => {
                    console.log('클릭: ', e.target);
                    console.log('클릭 이벤트 핸들러 실행됨');

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
                                    <p class="r-movieTitle">영화 제목 : ${review.movieTitle}</p>
                                    <p class="r-rateReview">평가 내용 : ${review.rateReview}</p>
                                    <p class="r-rateScore">영화 평점 : ${review.rateScore}</p>       
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
            });



            // 관심 영화 목록 보기
            document.addEventListener('DOMContentLoaded', () => {
                const interestMoviesButton = document.querySelector('#interestmoview');
                interestMoviesButton.onclick = e => {
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
                        `;
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
            });
        </script>
</body>

</html>
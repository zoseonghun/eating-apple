<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>EATINGAPPLE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/mypage-info.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/create-rate-modal-user.css" type="text/css" media="all" />
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
            height: 500px;
            width: 860px;
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
        .modal-tot-close-button-box {

            left: 0px;
            top: 10px;
        }
    </style>

</head>


<body>
    <!-- START PAGE SOURCE -->
    <div id="shell">
        <%--  헤더--%>
        <%@ include file="../include/header.jsp" %>
        <%--  헤더 end--%>
        <div id="sub-navigation">

        </div>

    </div>



    <div id="main">
        <div id="content">


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
                                    <a id="modal-modify">수 정</a>
                                </div>
                                <div class="modal-top-delete-box">
                                    <a id="modal-delete">삭 제</a>
                                </div>
                            </div>

                            <div class="modal-tot-close-button-box">
                                <span class="close">&times;</span>
                            </div>
                        </div>
                        <div class="modal-middle-box">
                            <div class="modal-middle-rate-content-box">
                                <span class="modal-movie-title" id="modal-movie-title">영화 제목</span>
                                <span class="modal-movie-review"><br> 영화 리뷰 </span>
                                <textarea name="modal-content" id="modal-content" cols="20" rows="10"></textarea>

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


                        <div class="mybasic-info">
                            <div class="profile-image">
                                <!-- <p>프로필사진</p> -->
                                <img src="${login.sprofileimage}" alt="#">
                            </div>
                            <div class="mypage-id">

                                <h3>나의 정보</h3>
                                <br>
                                <c:if test="${login.suserage == 0}">
                                    <p>ID: <span>${login.suserid}</span></p>
                                    <p class="kakao-center">카카오 로그인 회원입니다</p>
                                    <p class="kakao-center">카카오 회원은 회원정보</p>
                                    <p class="kakao-center">추가가 필요합니다</p>

                                </c:if>
                                <c:if test="${login.suserage != 0}">
                                    <p>ID: <br><span>${login.suserid}</span></p>

                                    <p>EMAIL: <br><span>${login.semail}</span></p>

                                    <p>AGE: <br><span>${login.suserage}</span></p>

                                    <p>GENDER: <br><span>${login.susergender}</span></p>
                                </c:if>
                            </div>
                            <div class="usergrade">

                                <div class="user-point-grade-box">
                                    <div class="user-point">
                                        <h3>나의 포인트</h3>
                                        <p>${login.suserpoint}</p>

                                    </div>
                                    <div class="user-grade">
                                        <h3>나의 등급</h3>
                                        <p>${login.susergrade}</p>

                                    </div>

                                </div>
                                <div class="user-grade-info-box">
                                    <h3>포인트 산정 방법</h3>
                                    <ul class="how-to-get-point">
                                        <li class="list">&nbsp;</li>
                                        <li class="list">&nbsp;1. 영화 리뷰 작성 시 포인트 100점</li>
                                        <li class="list">&nbsp;2. 영화 리뷰 연속 5개 작성 시 포인트 200점</li>
                                        <li class="list">&nbsp;3. 영화 좋아요 클릭 시 포인트 20점</li>
                                    </ul>
                                </div>


                            </div>
                            <!-- 
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
                                    </div> -->
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
                                        <div class="mydetail-message">
                                        <br>
                                        상단에 원하는 카테고리를 선택하여 클릭해주세요 <br><br>

                                        안녕하세요, EATING <span color=red>APPLE</span>을 이용해주셔서 감사합니다 <br>
                                        여러분의 작은 리뷰 하나가 큰 도움과 행복이 됩니다🤓 <br>
                                        짧지만 소중한 리뷰를 잠깐의 시간을내어 작성해주신다면 감사하겠습니다😀 <br>
                                        EATING <span color=red>APPLE</span> 여러분께 항상 쾌적한 서비스를 제공하기 위해 언제나 노력하도록 하겠습니다. 
                                        </div>
                                        <%-- 리뷰 데이터를 표시할 위치 --%>
                                        <div id="review-finalBox">
                                            <c:if test="${not empty reviews}">
                                                <c:forEach items="${reviews}" var="review">
                                                    <img src="/assets/img/redapple.png" alt="">
                                                    <div class="review-container" data-rum="${review.rateNum}">
                                                        <!-- <img src="/assets/img/redapple.png" alt=""> -->
                                                        <div class="review-box" id="reviewBox">
                                                            <p class="r-movieTitle">영화 제목 : ${review.movieTitle}</p>
                                                            <p><br><br></p>
                                                            <p class="r-rateReviewA">평가 내용 :</p>
                                                            <p class="r-rateReview"> ${review.rateReview}</p>

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
                                                            <!-- <!-- <p class="i-userNum">${interest.userNum}</p> -->
                                                            <p class="i-movieNum">${interest.movieNum}</p>
                                                            <p class="i-movieTitle">${interest.movieTitle}</p>
                                                            <p class="i-imgUrl">${interest.imgUrl}</p>
                                                            <!-- <img src="/assets/img/endgame.jpg" alt="어벤져스"> -->
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
            <div class="cl"></div>
        </div>



        <!-- footer -->
        <%@ include file="../include/footer.jsp" %>
        <!-- footer end-->
    </div>
    <!-- END PAGE SOURCE -->






    <script>
        // 내가 쓴 리뷰 버튼 클릭
        document.addEventListener('DOMContentLoaded', () => {
            const myReviewButton = document.querySelector('#myreview');
            myReviewButton.onclick = e => {
                console.log('클릭: ', e.target);
                console.log('클릭 이벤트 핸들러 실행됨');

                if (e.target.matches('#myreview')) {
                    console.log('리뷰 부르기~');
                    const user = '${login.susernum}'; // 사용자 번호
                    console.log(user);

                    const myReviewContent = document.querySelector('.mydetail-message');
                    myReviewContent.innerHTML ="";
                    // myReviewContent.style.display = 'none';

                    fetch('/user/review/' + user)
                        .then(response => {
                            console.log("제발");
                            return response.json()
                        })
                        .then(data => {
                            const reviewContainer = document.querySelector('#review-finalBox');
                            // .getAttribute('data-num');
                            reviewContainer.innerHTML = ''; // 기존 데이터 초기화
                            console.log(data + "?????");

                            // 데이터를 HTML에 추가
                            if (Array.isArray(data)) {
                                data.forEach(review => {
                                    console.log("review : =>" + review.rateNum);
                                    const reviewHTML = `
                                    <div class="review-container" data-rum=\${review.rateNum}>
                                    <p class="r-movieTitle" >영화 제목 : \${review.movieTitle}</p>
                                    <p class="r-rateReview">평가 내용 : \${review.rateReview}</p>
                                    <p class="r-rateScore">영화 평점 : \${review.rateScore}</p>       
                  `;
                                    reviewContainer.innerHTML += reviewHTML;
                                });
                            } else {
                                console.log('데이터가 유효하지 않습니다.');
                            }

                            // window.location.href = `/user/review/\${userNum}`;
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
                    const user = '${login.susernum}';
                    console.log(user);

                    const myReviewContent = document.querySelector('.mydetail-message');
                    myReviewContent.innerHTML ="";

                    fetch(`/user/interest/` + user)
                        .then(response => {
                            console.log("제발");
                            return response.json()
                        })
                        .then(data => {
                            const interestContainer = document.querySelector('#interest-finalBox');
                            interestContainer.innerHTML = ''; // 기존 데이터 초기화
                            console.log(data + "?????");

                            // 데이터를 HTML에 추가
                            if (Array.isArray(data)) {
                                data.forEach(interest => {
                                    const interestSet = document.createElement('div');
                                    interestSet.classList.add('interest-container');
                                    interestSet.innerHTML = ` 
                            <a href="/movies/detail?mno=\${interest.movieNum}"> 
                            <p class="i-movieTitle">\${interest.movieTitle}</p>
                            <img class=i-imgUrl src="\${interest.imgUrl}">  
                           </a>
                        `;
                                    interestContainer.appendChild(interestSet);
                                });
                            } else {
                                console.log('데이터가 유효하지 않습니다.');
                            }
                        })
                        .catch(error => {
                            console.log('데이터를 가져오는 중 오류가 발생했습니다.', error);
                        });
                }
            }
        });






        //모달
        const reviewFinalBox = document.querySelector('#review-finalBox');
        const modalTextarea = document.getElementById('modal-content');
        const modalMovieTitle = document.getElementById('modal-movie-title');
        let reviewScoreNum;
        reviewFinalBox.onclick = e => {
            console.log(e.target.closest('.review-container'));

            const target = e.target.closest('.review-container');
            const title = target.querySelector('.r-movieTitle').textContent;
            const reviewText = target.querySelector('.r-rateReview').textContent;
            const reviewScore = target.querySelector('.r-rateScore').textContent;
            const lastTwoChars = reviewScore.slice(8);
            reviewScoreNum = +lastTwoChars.trim();

            // console.log(title);
            // console.log(reviewText);

            document.getElementById('myModal').style.display = 'block';
            modalTextarea.textContent = `\${reviewText}`;
            modalMovieTitle.textContent = `\${title}`;

            // console.log(reviewScoreNum);

            switch (reviewScoreNum) {
                case 1:
                    document.getElementById("star1").checked = true;
                    break;
                case 2:
                    document.getElementById("star2").checked = true;
                    break;
                case 3:
                    document.getElementById("star3").checked = true;
                    break;
                case 4:
                    document.getElementById("star4").checked = true;
                    break;
                default:
                    console.log("잘못됨")
            };



        };

        // 모달 닫기 버튼 클릭 이벤트
        document.querySelector('.close').addEventListener('click', function () {
            document.getElementById('myModal').style.display = 'none';
        });


        // const modifyButton = document.getElementById('modal-modify');
        // const deleteButton = document.getElementById('modal-delete');
        // const rateReview = document.querySelector('.rateReview');
        // const rateScore = document.querySelector('.rateScore');


        function deleteEvent() {
            const $deleteData = document.getElementById('modal-delete');
            console.log('$mdmd', $deleteData);

            $deleteData.onclick = e => {
                console.log(e.target);
                e.preventDefault();

                const rNum = document.querySelector('.review-container').getAttribute('data-rum');
                console.log("test", rNum);

                const URL = '/rates/' + rNum;
                if (e.target.matches('#modal-delete')) {
                    console.log('삭제버튼 클릭');

                    if (!confirm('정말 삭제하십니까? 삭제된 데이터는 복구되지 않습니다.'))
                        return;

                    const data = {
                        rNum: rNum // 해당 데이터의 key-value 형식으로 전송
                    };

                    fetch(URL, {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify(data)
                    }).then(res => {
                        if (res.status === 200) {
                            alert('정상적으로 삭제되었습니다.');
                            return res.text();
                        } else {
                            alert('다시 시도해주세요');
                        }
                    }).then(responseResult => {
                        console.log(responseResult);
                    }).catch(error => {
                        console.error(error);
                        alert('요청을 처리하는 도중 오류가 발생했습니다.');
                    });
                }


            }
        }
        //수정 버튼 클릭시 변경 이벤트 
        function modifyButton() {
            const $modBtn = document.getElementById('modal-modify');
            console.log("modBtn", $modBtn);

            $modBtn.onclick = e => {
                console.log(e.target);
                e.preventDefault();

                const $starScore = document.querySelectorAll('.rating input[type="radio"]');
                let selected = 0;

                // 별점 따라 사과 모양 바꿀까 말까?
                $starScore.forEach(target => {
                    if (target.checked) {
                        selected = +target.value;
                        // if (selected > 3) {
                        //     document.querySelector('.modal-top-rate-icon-box').closest;
                        // }
                    }
                });


                const rNum = document.querySelector('.review-container').getAttribute('data-rum');
                console.log("test", rNum);

                const URL = '/rates';

                if (e.target.matches('#modal-modify')) {
                    console.log('수정버튼 클릭');

                    // if (!confirm('정말 수정하십니까?'))
                    //     return;

                    const rateR = modalTextarea.value;
                    console.log(rateR);


                    const data = {
                        rateNum: rNum,
                        rateReview: rateR,
                        rateScore: selected,
                    };

                    fetch(URL, {
                        method: 'PUT',
                        headers: {
                            'content-type': 'application/json'
                        },
                        body: JSON.stringify(data)
                    }).then(res => {
                        if (res.status === 200) {
                            alert('댓글이 정상 수정되었습니다!');

                        } else {
                            alert('댓글 수정에 실패했습니다.');
                        }

                    });
                }
            }
        }


        (function () {
            deleteEvent();
            modifyButton();
        })();
    </script>
</body>

</html>
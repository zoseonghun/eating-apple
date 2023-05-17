<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="myModal" class="modal">
    <div class="modal-content">
        <form method="POST" action="/submit">
            <div class="modal-top-box">
                <div class="modal-top-rate-icon-box">
                    <img src="/assets/img/xapple.png" alt="#" id="modal-rate-icon">
                </div>
                <div class="modal-top-rate-input-box">
                    <input type="checkbox" id="checkbox1" class="star-checkbox" value="1">
                    <label for="checkbox1" class="star"></label>
                    <input type="checkbox" id="checkbox2" class="star-checkbox" value="1">
                    <label for="checkbox2" class="star"></label>
                    <input type="checkbox" id="checkbox3" class="star-checkbox" value="1">
                    <label for="checkbox3" class="star"></label>
                    <input type="checkbox" id="checkbox4" class="star-checkbox" value="1">
                    <label for="checkbox4" class="star"></label>
                    <input type="checkbox" id="checkbox5" class="star-checkbox" value="1">
                    <label for="checkbox5" class="star"></label>
                </div>
                <div class="modal-top-md-box">
                    <div class="modal-top-modify-box">
                        <a href="#">수 정</a>
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
                        <span class="modal-movie-title">GUARDIANS OF GALAXY VOL. 3</span>
                    </div>
                    <div class="modal-bottom-writer-info-box">
                        <div class="modal-bottom-writer-profile-box">
                            <img src="/assets/img/people-httpswww.flaticon.com.png" alt="">
                        </div>
                        <div class="modal-bottom-writer-id-score-box">
                            <div class="modal-bottom-writer-id-box"><span>coticablue2</span></div>
                            <div class="modal-bottom-writer-score-box"><span>324점</span></div>
                        </div>
                        <div class="modal-bottom-writer-score-icon-box">
                            <img src="/assets/img/crown.png" alt="#">
                        </div>
                    </div>
                </div>
                <div class="modal-bottom-right-box">
                    <div class="modal-bottom-like-box">
                        <div class="modal-bottom-like-icon-box">
                            <img src="/assets/img/love-httpswww.flaticon.com.png" alt="">
                        </div>
                        <div class="modal-bottom-like-num-box">
                            <span>123 ♥</span>
                        </div>
                    </div>
                    <div class="modal-bottom-save-button-box">
                        <button type="submit" class="modal-save-button">저 장</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
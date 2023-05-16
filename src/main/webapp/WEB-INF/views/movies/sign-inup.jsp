<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>


<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/sign-inup.css" type="text/css" media="all" />
    <style>
        #content {
            border: 1px solid #fff;
            height: 700px;
        }

    </style>
</head>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">
    <!-- header -->
    <%@ include file="../include/header.jsp" %>
    <div id="sub-navigation">
        <ul>
            <!-- 장르 카테고리 -->
            <li><a href="#"></a></li>
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
<!-- header end -->


<!-- main -->
    <div id="main">
        <!-- 로그인 / 회원가입 -->
        <div id="content">
            <div class="container">
                <div class="row full-height justify-content-center">
                    <div class="col-12 text-center align-self-center py-5">
                        <div class="section pb-5 pt-5 pt-sm-2 text-center">
                            <!-- <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6> -->
                            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
                            <label for="reg-log"></label>
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Log In</h4>
                                                <div class="form-group">
                                                    <input type="id" name="account" class="form-style"
                                                           placeholder="Your id" id="logid" autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="Your Password" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <a href="#" class="btn mt-4">submit</a>
                                                <p class="mb-0 mt-4 text-center"><a href="#0" class="link">
                                                    Forgot your password?</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Sign Up</h4>
                                                <div class="form-group">
                                                    <input type="id" name="account" class="form-style"
                                                           placeholder="Your id" id="signup-id" autocomplete="off">
                                                    <i class="input-icon uil uil-user"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="Your Password" id="signup-password"
                                                           autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="your password again"
                                                           id="signup-password-confirm" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="email" name="email" class="form-style"
                                                           placeholder="Your email" id="signup-email"
                                                           autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="text" name="gender" class="form-style"
                                                           placeholder="Your Gender" id="signup-gender"
                                                           autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="text" name="age" class="form-style"
                                                           placeholder="Your Age" id="signup-age" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <a href="#" class="btn mt-4">submit</a>
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
        <div class="cl"> </div>
    </div>
<!-- main end -->


<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end-->
</div>
<!— END PAGE SOURCE —>

</body>

</html>
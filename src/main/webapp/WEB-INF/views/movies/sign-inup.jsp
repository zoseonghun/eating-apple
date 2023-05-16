<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>MovieHunter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/assets/css/sign-inup.css" type="text/css" media="all" />

    <style>

    </style>
    <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
</head>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">
    <!-- header-->
    <%--헤더 공통 부분--%>
    <%@ include file="../include/header.jsp" %>
    <%--헤더 공통 부분--%>
    <div id="sub-navigation">
        <ul>
            <!-- 검색창 왼쪽끝 공간 -->
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
<!-- header end-->

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
                                                           placeholder="Your id" id="logemail" autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="Your Password" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <a href="#" class="btn mt-4">submit</a>
                                                <p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot
                                                    your password?</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Sign Up</h4>
                                                <div class="form-group">
                                                    <input type="id" name="account" class="form-style"
                                                           placeholder="Your id" id="logname"
                                                           autocomplete="off">
                                                    <i class="input-icon uil uil-user"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="Your Password" id="logemail" autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="password" class="form-style"
                                                           placeholder="your password again" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="email" name="email" class="form-style"
                                                           placeholder="Your email" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="gender" name="gender" class="form-style"
                                                           placeholder="Your Gender" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="age" name="age" class="form-style"
                                                           placeholder="Your Age" id="logpass" autocomplete="off">
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
        <div class="cl">&nbsp;</div>
    </div>
<!-- footer -->
<%@ include file="../include/footer.jsp" %>
<!-- footer end-->
</div>
<!— END PAGE SOURCE —>
</body>

</html>
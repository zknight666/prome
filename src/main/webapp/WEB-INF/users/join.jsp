<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Project With Me - Write</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/modal_01_signup.css">
    <link rel="stylesheet" href="../css/modal_02_login.css">
</head>

<body>
    <div class="container">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="
                  background: rgb(39, 146, 212);
                  background: linear-gradient(90deg, rgba(39, 146, 212, 1) 0%, rgba(78, 99, 221, 1) 100%);
                  border: none;
                  margin: 0;
                ">
            <!--style="background-color: #1A6DFF !important;"-->
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03"
                    aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarColor03">
                    <img src="../assets/logo.png" style="cursor: pointer" />

                    <ul class="navbar-nav me-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                                aria-haspopup="true" aria-expanded="false"></a>
                        </li>
                    </ul>

                    <form class="d-flex dropdown">
                        <button class="btn my-2 my-sm-0" id="loginBtn" type="button" style="padding-right: 0">
                            <img src="../assets\btn-login.png" />
                        </button>
                        <button class="btn my-2 my-sm-0 writeForm" type="button" style="padding-right: 0;
                                    padding-left: 0;">
                            <img src="../assets\btn-signup.png" />
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark" style="
                  background-image: url('../assets/main-banner.png');
                  background-size: auto;
                  background-repeat: no-repeat;
                  background-position: center;
                  height: auto;
                  min-height: 400px;
                  background-color: #ffffff !important;
                "></header>

        <section class="container">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row mb-3">
                    <div class="col pb-2" style="display: flex">
                        <span class="h2" style="font-weight: bold">회원가입</span>
                    </div>
                    <div class="section">
                        <div class="p-2">
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 이름</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" id="name" placeholder="이름을 입력해주세요." minLength="2" maxLength="10"
                                        autoComplete="on" type="text">
                                    <div class="px-3" id="nameDiv" style="color:red;"></div>
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 아이디</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" placeholder="아이디를 입력해주세요." minLength="2" maxLength="10"
                                        autoComplete="on" type="text" id="id">
                                    <div class="px-3" id="idCheckDiv"></div>
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 비밀번호</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" id="pwd1" type="password">
                                    <div class="px-3" style="color:red;" id="pwd1CheckDiv"></div>
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 비밀번호 확인</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" id="pwd2" type="password">
                                    <div class="px-3" style="color:red;" id="pwd2CheckDiv"></div>
                                </div>
                            </div>
                            <div class="p-4">
                                <fieldset class="form-group flex">
                                    <div>
                                        <span class="h5 mt-4" style="margin-right: 3em; font-weight: 800;">* 성별 </span>
                                    </div>
                                    <div>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                            checked="">
                                        <label class="form-check-label" style="margin-right: 1em" for="optionsRadios1">
                                            남성
                                        </label>
                                    </div>
                                    <div>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                        <label class="form-check-label" for="optionsRadios2">
                                            여성
                                        </label>
                                    </div>
                                </fieldset>
                            </div>
                            <div style="padding: 24px 24px 0px 24px;">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 이메일</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" style="padding-top: 0;padding-bottom: 0;" id="email1"
                                        type=" text">
                                    <div class="pt-3 px-2">@</div>
                                    <input class="box" style="padding-top: 0;padding-bottom: 0;" id="email2"
                                        type="text">
                                    <div class="px-3">
                                        <select class="form-select" style="display:inline; width:10rem;"
                                            id="email_select">
                                            <option value="">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="kakao.com">kakao.com</option>
                                            <option value="yahoo.com">yahoo.com</option>
                                            <option value="narasarang.or.kr">narasarang.or.kr</option>
                                        </select>
                                    </div>
                                    <div class="content_center">
                                        <button type="button" class="btn btn-outline-dark" id="email_checkBtn">
                                            인증하기
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="px-4">
                                <div id="email_checkDiv" class="email_off">
                                    <span class="px-2">인증 번호 입력:</span>
                                    <div class="px-2">
                                        <input class="box" style="width: 11rem; text-align: center;" type=" text"
                                            maxLength="6">
                                    </div>

                                    <div class="content_center px-2">
                                        <button type="button" class="btn btn-outline-dark" id="email_checkBtn">
                                            확인
                                        </button>
                                    </div>
                                    <div class="content_center">
                                        <button type="button" class="btn btn-outline-dark" id="email_checkBtn">
                                            다시받기
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="p-4">
                                <span class="h5" style="font-weight: 800;">* 핸드폰 번호</span><br>
                                <select class="form-select" style="display:inline; width: 8rem;" id="exampleSelect1">
                                    <option>010</option>
                                    <option>016</option>
                                    <option>011</option>
                                </select>
                                -
                                <input class="box mx-2" style="width: 11rem; text-align: center;" type="text">
                                -
                                <input class="box mx-2" style="width: 11rem; text-align: center;" type="text">
                            </div>

                            <div class="p-4">
                                <span class="h5" style="font-weight: 800;">* 주소</span>
                                <span>선택사항</span>
                                <div class="content_center">
                                    <input class="box" type="password">
                                    <button type="button" class="btn btn-outline-dark mx-3">우편번호 검색</button><br>
                                </div>
                                <input class="box my-2" style="width:70%" type="text"><br>
                                <span style="font-size: 1.1rem; font-weight: 800;">상세 주소</span><br>
                                <input class="box my-1" style="width:70%" type="text">
                            </div>

                            <div class="p-4">
                                <span class="h5" style="font-weight: 800;">* 기술/언어</span>
                                <div class="card border-light mb-3" style="width: auto;">
                                    <div class="card-body">
                                        <div class="icon">
                                            <input type="checkbox" id="android" class="icon">
                                            <label for="android"><em></em><br><span>android</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="aws" class="icon">
                                            <label for="aws"><em></em><br><span>aws</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="c" class="icon">
                                            <label for="c"><em></em><br><span>C/C#</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="docker" class="icon">
                                            <label for="docker"><em></em><br><span>docker</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="figma" class="icon">
                                            <label for="figma"><em></em><br><span>figma</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="flutter" class="icon">
                                            <label for="flutter"><em></em><br><span>flutter</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="git" class="icon">
                                            <label for="git"><em></em><br><span>git</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="html" class="icon">
                                            <label for="html"><em></em><br><span>html/css</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="ios" class="icon">
                                            <label for="ios"><em></em><br><span>ios</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="javascript" class="icon">
                                            <label for="javascript"><em></em><br><span>javascript</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="java" class="icon">
                                            <label for="java"><em></em><br><span>java</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="kotlin" class="icon">
                                            <label for="kotlin"><em></em><br><span>kotlin</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="kubernetes" class="icon">
                                            <label for="kubernetes"><em></em><br><span>kubernetes</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="mongodb" class="icon">
                                            <label for="mongodb"><em></em><br><span>mongodb</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="mysql" class="icon">
                                            <label for="mysql"><em></em><br><span>mysql</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="nodejs" class="icon">
                                            <label for="nodejs"><em></em><br><span>nodejs</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="photoshop" class="icon">
                                            <label for="photoshop"><em></em><br><span>photoshop</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="python" class="icon">
                                            <label for="python"><em></em><br><span>python</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="react" class="icon">
                                            <label for="react"><em></em><br><span>react</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="spring" class="icon">
                                            <label for="spring"><em></em><br><span>spring</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="tensorflow" class="icon">
                                            <label for="tensorflow"><em></em><br><span>tensorflow</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="typescript" class="icon">
                                            <label for="typescript"><em></em><br><span>typescript</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="unity" class="icon">
                                            <label for="unity"><em></em><br><span>unity</span></label>
                                        </div>
                                        <div class="icon">
                                            <input type="checkbox" id="vue" class="icon">
                                            <label for="vue"><em></em><br><span>vue</span></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pb-4 flex btn-position">
                                <button type="reset" class="btn btn-outline-dark mx-3">다시작성</button>
                                <button type="button" id="signup" class="btn btn-outline-dark">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="modalWrapClose_1">
            <div class="loginModal_1">
                <p class="modalTit_1">회원 가입하기</p>
                <button class="closeBtn_1">
                    <img loading="lazy" src="../assets/icon/ic-close.svg" alt="close">
                </button>
                <button class="loginBtn_1 naver">네이버 아이디로 가입 </button>
                <button class="loginBtn_1 kakao">카카오 계정으로 가입</button>
                <button class="loginBtn_1 facebook">페이스북 계정으로 가입</button>
                <button class="loginBtn_1 google">구글 계정으로 가입</button>
                <p class="loginNoticeTxt">소셜 로그인으로 가입 시
                    <a target="_blank" href="/tnc/service_policy">이용약관,&nbsp;</a>
                    <a target="_blank" href="/tnc/privacy_policy">개인정보처리방침,&nbsp;</a>
                    <a target="_blank" href="/tnc/payment_policy"> 전자금융거래약관</a>에 동의함으로 처리됩니다
                </p>
                <a class="signupBtn_1">로그인</a>
            </div>
        </div>

        <div class="modalWrapClose">
            <div class="loginModal" style="padding-bottom: 30px;">
                <p class="modalTit">로그인</p>
                <button class="closeBtn">
                    <img loading="lazy" src="../assets/icon/ic-close.svg" alt="close">
                </button>
                <div><img class="pmelogo" src="../assets/icon/pmelogo.png"></div>
                *ID
                <div class="div_center"><input class="div_id" type="text" required="required"></div>
                *Password
                <div class="div_center"><input class="div_password" type="password" required="required"></div>
                <button type="button" class="btn btn-outline-secondary radious">로그인</button>
                <button type="button" class="btn btn-outline-secondary radious writeForm">회원가입</button>
            </div>
        </div>


        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; ProMe 2023</p>
            </div>
        </footer>
    </div>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="../js/write.js"></script>
    <script type="text/javascript">
        $('.writeForm').click(function () {
            location.replace('file:///C:/Users/bitcamp/Documents/ProMe-front/users_writeForm.html')
        });
        // modal
        $("#loginBtn").click(function () {
            $(".loginModal_1").parent().attr("class", "modalWrapOpen_1");
        });
        $(".closeBtn_1").click(function () {
            $(".loginModal_1").parent().attr("class", "modalWrapClose_1");
        });
        $('.signupBtn_1').click(function () {
            $(".loginModal").parent().attr("class", "modalWrapOpen");
            $(".loginModal_1").parent().attr("class", "modalWrapClose_1");
        });
        $(".closeBtn").click(function () {
            $(".loginModal").parent().attr("class", "modalWrapClose");
        });
    </script>
    <script src="../js/scripts.js"></script>
</body>

</html>
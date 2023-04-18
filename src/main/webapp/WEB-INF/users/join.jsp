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

                            <div class="dropdown-menu">
                                <div class="dropdown-item">*******님</div>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">마이페이지</a>

                                <a class="dropdown-item" href="#">내 모임 지원자 관리</a>

                                <a class="dropdown-item" href="#">회원 정보 수정</a>
                                <div class="dropdown-divider"></div>
                            </div>
                        </li>
                    </ul>

                    <form class="d-flex dropdown">
                        <!-- <input class="form-control me-sm-2" type="search" placeholder="Search" /> -->
                        <button class="btn my-2 my-sm-0" type="button" style="padding-right: 0">
                            <img src="../assets\btn-logout.png" />
                        </button>

                        <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true"
                            aria-expanded="false" data-bs-toggle="dropdown" style="margin-right: 0.5rem">
                            <img src="../assets\account-circle.png" />
                        </button>
                        <div class="dropdown-menu" style="right: 0">
                            <div class="dropdown-item">*******님</div>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">마이페이지</a>

                            <a class="dropdown-item" href="#">내 모임 지원자 관리</a>

                            <a class="dropdown-item" href="#">회원 정보 수정</a>
                            <div class="dropdown-divider"></div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark" style="
                  background-image: url('assets/main-banner.png');
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
                                <div>
                                    <input class="box" placeholder="이름을 입력해주세요." minLength="2" maxLength="10" value=""
                                        autoComplete="on" type="text">
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 아이디</span>
                                </div>
                                <div class="content_center">
                                    <input class="box" placeholder="아이디를 입력해주세요." minLength="2" maxLength="10" value=""
                                        autoComplete="on" type="text">
                                    <button type="button" class="btn btn-outline-dark mx-3">중복확인</button>
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 비밀번호</span>
                                </div>
                                <div>
                                    <input class="box" type="password">
                                </div>
                            </div>
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 비밀번호 확인</span>
                                </div>
                                <div>
                                    <input class="box" type="password">
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
                                            <option value="gmail.com">hanmail.com</option>
                                            <option value="gmail.com">.com</option>
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
                                <!-- 선택 사항으로 만들기 -->
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
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/android.png">
                                            </button><br>
                                            <span>android</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/aws.png">
                                            </button><br>
                                            <span>aws</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/cc.png">
                                            </button><br>
                                            <span>C/C#</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/docker.png">
                                            </button><br>
                                            <span>docker</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/figma.png">
                                            </button><br>
                                            <span>figma</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/flutter.png">
                                            </button><br>
                                            <span>flutter</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/git.png">
                                            </button><br>
                                            <span>git</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/html.png">
                                            </button><br>
                                            <span>html/css</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/ios.png">
                                            </button><br>
                                            <span>ios</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/js.png">
                                            </button><br>
                                            <span>js</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/java.png">
                                            </button><br>
                                            <span>java</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/kotlin.png">
                                            </button><br>
                                            <span>kotlin</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/kubernetes.png">
                                            </button><br>
                                            <span>kubernetes</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/mongodb.png">
                                            </button><br>
                                            <span>mongodb</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/mysql.png">
                                            </button><br>
                                            <span>mysql</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/nodejs.png">
                                            </button><br>
                                            <span>nodejs</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/photoshop.png">
                                            </button><br>
                                            <span>photoshop</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/python.png">
                                            </button><br>
                                            <span>python</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/react.png">
                                            </button><br>
                                            <span>react</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/spring.png">
                                            </button><br>
                                            <span>spring</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/tensorflow.png">
                                            </button><br>
                                            <span>tensorflow</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/typescript.png">
                                            </button><br>
                                            <span>typescript</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/unity.png">
                                            </button><br>
                                            <span>unity</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src=" ../assets/icon/vue.png">
                                            </button><br>
                                            <span>vue</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pb-4 flex btn-position">
                                <button type="button" class="btn btn-outline-dark mx-3">다시작성</button>
                                <button type="button" class="btn btn-outline-dark">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



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
    <script type="text/javascript">
        $('#email_checkBtn').click(function () {
            $(this).attr("style", "display:none;");
            $('#email_checkDiv').attr("class", "email_on");
        });

        $(function () {
            $('#email_select').change(function () {
                $('#email2').val($('#email_select').val());
            });


        });

    </script>
    <script src="js/scripts.js"></script>
</body>

</html>
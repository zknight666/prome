<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project With Me - Home</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/letspl.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <link href="../css/projectdetail.css" rel="stylesheet" />
    <link href="../css/modal.css" rel="stylesheet" />
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
                  background-image: url('../assets/main-banner.png');
                  background-size: auto;
                  background-repeat: no-repeat;
                  background-position: center;
                  height: auto;
                  min-height: 400px;
                  background-color: #ffffff !important;
                "></header>

        <!-- Main content-->
        <section class="container">
            <div class="container">
                <div class="boardTitle">
                    <h2 class="Wrap_tabtitle" style="font-weight: bold" id="projectName"> 비법 거래소 </h2>
                </div>
                <div class="boardSection">
                    <div>
                        <div>
                            <h5 style="font-weight: 800;">&emsp;* 모집현황</h5>
                        </div>
                        <article class="recruitment_Status">
                            <div class="recruitment_Status_content content_center">
                                <div>
                                    <span class="ps-3">
                                        UI/UX 디자인
                                    </span>
                                </div>
                                <div>
                                    <span>
                                        0
                                    </span>
                                    /
                                    <span>
                                        1
                                    </span>
                                </div>
                                <button type="button" class="btn btn-sm col-2 btn-outline-secondary apply">
                                    지원
                                </button>
                            </div>
                            <div class="recruitment_Status_content content_center">
                                <div>
                                    <span class="ps-3">
                                        웹프론트엔드
                                    </span>
                                </div>
                                <div>
                                    <span>
                                        0
                                    </span>
                                    /
                                    <span>
                                        1
                                    </span>
                                </div>
                                <button type="button" class="btn btn-sm col-2 btn-outline-secondary apply">
                                    지원
                                </button>
                            </div>
                            <div class="recruitment_Status_content content_center">
                                <div>
                                    <span class="ps-3">
                                        웹서버
                                    </span>
                                </div>
                                <div>
                                    <span>
                                        0
                                    </span>
                                    /
                                    <span>
                                        1
                                    </span>
                                </div>
                                <button type="button" class="btn btn-sm col-2 btn-outline-secondary apply">
                                    지원
                                </button>
                            </div>
                        </article>
                    </div>
                    <div class="leaderInfo">
                        <div>
                            <h5 style="font-weight: 800;">&emsp;*리더 정보</h5>
                        </div>
                        <div class="leaderInfoDiv">
                            <div class="leaderInfo1">
                                <div class="leaderInfo1_imgId">
                                    <div class="leaderInfo1_imgDiv">
                                        <img class="leaderInfo1_img" src="../assets/account-circle.png">
                                    </div>
                                    <div class="leaderInfo1_idDiv">
                                        <span class="leaderInfo1_id">yoongi</span>
                                    </div>
                                </div>
                                <div>
                                    <div class="leaderInfo1_techLanDiv">
                                        <span class="leaderInfo1_techLan">기술/언어</span>
                                    </div>
                                    <div class="leaderInfo1_iconDiv">
                                        <img class="image" src=" ../assets/icon/figma.png">
                                        <img class="image" src=" ../assets/icon/git.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                        <img class="image" src=" ../assets/icon/tensorflow.png">
                                        <img class="image" src=" ../assets/icon/java.png">
                                    </div>
                                </div>
                            </div>
                            <div class="leaderInfo2">
                                <div class="leaderInfo2_periodTitleDiv">
                                    <span class="leaderInfo2_periodTitle">프로젝트 기간</span>
                                </div>
                                <div class="leaderInfo2_periodDiv">
                                    <span class="leaderInfo2_period">23.04.17</span>
                                    <span>~</span>
                                    <span class="leaderInfo2_period">23.05.03</span>
                                </div>
                                <hr />
                            </div>
                            <div class="leaderInfo3">
                                <div class="leaderInfo3_fieldTitleDiv">
                                    <span class="leaderInfo3_fieldTitle">프로젝트 분야</span>
                                </div>
                                <div class="leaderInfo3_fieldDiv">
                                    <span class="leaderInfo3_field">소셜네트워크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <h5 style="font-weight: 800;">&emsp;* 프로젝트 설명</h5>
                        </div>
                        <div class="project_explainBox">
                            <pre class="project_description">내 글이 주식처럼 상장되는 곳 ‘비법 거래소' 💬
우리는 5000만 한국인이 사랑하는 글 기반의 비법 유통 채널을 만드는 팀입니다.
비법 거래소는 서로의 직무, 연애, 투자, 쇼핑, 커리어, 결혼, 웃긴 이야기, 신기한 이야기, 게임 꿀팁 등 다양한 카테고리의 지식과 경험들을 사고파는 플랫폼입니다.
우리는 아무리 좋은 꿀팁이 있어도 굳이굳이 다른 사람들에게 알려주진 않죠! 이런 사소한 꿀팁들이 누군가에게는 정말정말 필요한 ‘비법들’입니다.

🚀 수익모델 MVP 가설 검증 완료!
수익모델 MVP 테스트 결과, 96%의 사람들이 유료여도 비법&꿀팁을 구매하겠다고 하셨고, 80%의 사람들이 글을 판매하고싶다고 응답했습니다. 그래서 저희는 지금 이 프로젝트를 시작하려고 합니다. (자세한 내용은
노션을 확인해주세요!)

저희는 플랫폼의 성장뿐만 아니라, 저희 플랫폼의 사용자와 함께 물질적, 경험적으로 풍요로워지는 것을 목표로 합니다.

현재 사이드프로젝트로 진행하고 있으며, "스텔스 창업" 프로젝트로, 올해 6월 내 MVP 출시를 목표로 합니다.
수익 창출시 법인 설립 예정입니다.

🚀 지금 우리는
현재 PM/PO 2, 디자이너 1, Flutter 개발자 1명, 웹 프론트 3명, Back-End 개발자 3명, 총 10명으로 구성되어있습니다.

프로젝트 진행은 기획 및 와이어프레임 완료, 최종 디자인 80% 완료, 서버 구축 50% , 앱 20% & 웹 50%, 관리자 페이지90% 구축 진행중입니다.

현재 "Flutter 개발자 1명 적극 모집중입니다!"


🚀 진행방식
‘1주 1회 온라인 회의로 진행합니다. + 팀별 회의가 필요하다면 비정기적으로 진행합니다.

일정 목표는 2023. 6월, 1차 MVP 출시 (결제 붙은 모델)가 목표입니다.



🚀모집중
Flutter 개발자 1명 모집중입니다!

비법거래소의 초기 맴버로, 추진력 있고 열정 넘치는, 에너지가 넘치는 분들을 기다리고있습니다.

재미있는 BM, 빠른 앱개발에 관심있으신 분들의 많은 관심 부탁드립니다.

노션에서 더 자세한 저희 서비스에 대해서 구경하실 수 있습니다!
🚀모집중
Flutter 개발자 1명 모집중입니다!

비법거래소의 초기 맴버로, 추진력 있고 열정 넘치는, 에너지가 넘치는 분들을 기다리고있습니다.

재미있는 BM, 빠른 앱개발에 관심있으신 분들의 많은 관심 부탁드립니다.

노션에서 더 자세한 저희 서비스에 대해서 구경하실 수 있습니다!
🚀모집중
Flutter 개발자 1명 모집중입니다!

비법거래소의 초기 맴버로, 추진력 있고 열정 넘치는, 에너지가 넘치는 분들을 기다리고있습니다.

재미있는 BM, 빠른 앱개발에 관심있으신 분들의 많은 관심 부탁드립니다.

노션에서 더 자세한 저희 서비스에 대해서 구경하실 수 있습니다!
🚀모집중
Flutter 개발자 1명 모집중입니다!

비법거래소의 초기 맴버로, 추진력 있고 열정 넘치는, 에너지가 넘치는 분들을 기다리고있습니다.

재미있는 BM, 빠른 앱개발에 관심있으신 분들의 많은 관심 부탁드립니다.

노션에서 더 자세한 저희 서비스에 대해서 구경하실 수 있습니다!</pre>
                        </div>
                    </div>
                    <div>
                        <div>
                            <h5 style="font-weight: 800;">&emsp;* 기술/언어</h5>
                        </div>
                        <div class="techLan">
                            <div class="techLan_icon">
                                <img src=" ../assets/icon/android.png">
                                <br>
                                <span>android</span>
                            </div>
                            <div class="techLan_icon">
                                <img src=" ../assets/icon/aws.png">
                                <br>
                                <span>aws</span>
                            </div>
                            <div class="techLan_icon">
                                <img src=" ../assets/icon/cc.png">
                                <br>
                                <span>C/C#</span>
                            </div>
                            <div class="techLan_icon">
                                <img src=" ../assets/icon/docker.png">
                                <br>
                                <span>docker</span>
                            </div>
                        </div>
                    </div>
                    <div class="board_memberDiv">
                        <div>
                            <h5 style="font-weight: 800;">&emsp;* 멤버정보</h5>
                        </div>
                        <div class="board_memberArea">
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="../assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">yoongi</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ../assets/icon/cc.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="../assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">taejin</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ../assets/icon/cc.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="../assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">Baek</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ../assets/icon/cc.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="./assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">taejin</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ./assets/icon/cc.png">
                                        <img class="image" src=" ./assets/icon/docker.png">
                                        <img class="image" src=" ./assets/icon/android.png">
                                        <img class="image" src=" ./assets/icon/docker.png">
                                        <img class="image" src=" ./assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="../assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">taejin</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ../assets/icon/cc.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                            <div class="board_member">
                                <div class="board_member1">
                                    <div class="board_member1_img">
                                        <img class="img" src="../assets/account-circle.png">
                                    </div>
                                    <div>
                                        <span class="board_member1_id">taejin</span>
                                    </div>
                                </div>
                                <div class="board_member2">
                                    <span class="board_member2_field">UI/UX 디자인</span>
                                </div>
                                <div class="board_member3">
                                    <div>
                                        <span class="board_member3_techLan">기술/언어</span>
                                    </div>
                                    <div class="board_member3_icon">
                                        <img class="image" src=" ../assets/icon/cc.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/android.png">
                                        <img class="image" src=" ../assets/icon/docker.png">
                                        <img class="image" src=" ../assets/icon/aws.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; ProMe 2023</p>
            </div>
        </footer>
    </div>

    <div class="modalWrapClose">
        <div class="loginModal" style="padding-bottom: 30px;">
            <button class="closeBtn">
                <img loading="lazy" src="../assets/icon/ic-close.svg" alt="close">
            </button>
            <div style="text-align: center; width:220px; height:60px;"><img class="pwmlogo" src="../assets/images/pwmlogo.png"></div>
            <div class="div_center_tit">

            </div>
            <div class="div_center">
                <p>* 지원사유</p>
                <textarea class="div_content"></textarea>
            </div>


            <button type="button" class="btn btn-outline-secondary radious" id="apply">지원 완료</button>
            <button type="button" class="btn btn-outline-secondary radious applyCancel">취소</button>

        </div>
    </div>




    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="../js/board.js"></script>
    <script src="../js/letspl.js"></script>
    <script src="../js/scripts.js"></script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project With Me - project</title>

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
    <style type="text/css">
        .techLan {
            height: 110px;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            border-radius: 0.375rem;
            border: 1px solid #e3e3e3;
            margin: 15px 0px 15px 15px;
            padding: 16px;
        }
        #techLan {
            width: 93px;
            height: auto;
            padding: 5px 0px 5px 0px;
            justify-content: flex-end;
            text-align: center;
            font-size: 1rem;
            font-weight: 600;
        }

        #leaderTech img{
            width: 40px;
            height: 40px;
        }
        .techLan .techLan_icon {
            width: 50px;
            height: 50px;
            padding: 5px 0px 5px 0px;
            margin: 0px 10px 0px 10px;
            justify-content: flex-end;
            text-align: center;
            font-size: 12px;
            font-weight: 500;

        }

        .techLan_icon span{
            margin-top: 5px;
        }

        #recruitment{
            display: flex;
            flex-direction: column;
        }
        .recruitment_element {
            display: flex;
        }
        .recruitment_element div {
            margin-right: 3rem;
        }

        #memberTechstack img{
            width: 40px;
            height: 40px;

        }


    </style>

</head>


<body>

<!-- model에 담긴 project 정보 사용 -->

<div class="container">

    <div id="project-info">
        <input type="hidden" id="id" value="${id }" />
    </div>



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
                <img src="../assets/logo.png" style="cursor: pointer" onclick="location.href='/prome'" />

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
                    <button id="logoutBtn" class="btn my-2 my-sm-0" type="button" style="padding-right: 0">
                        <img src="../assets\btn-logout.png" />
                    </button>

                    <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true"
                            aria-expanded="false" data-bs-toggle="dropdown" style="margin-right: 0.5rem">
                        <img src="../assets\account-circle.png" />
                    </button>
                    <div class="dropdown-menu" style="right: 0">
                        <div class="dropdown-item">${user_id}님</div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/prome/users/mypage">마이페이지</a>

                        <a class="dropdown-item" href="/prome/project/applicants">내 모임 지원자 관리</a>

                        <a class="dropdown-item" href="/prome/users/userinfo">회원 정보 수정</a>
                        <div class="dropdown-divider"></div>
                    </div>
                </form>
            </div>
        </div>
    </nav>

    <!-- Header-->
    <header class="bg-dark" style="
                  background-image: url('../assets/main-banner.png');
                  background-size: contain; background-repeat: no-repeat; background-position: top; height: auto; min-height: 400px; background-color: #ffffff !important;"></header>

    <!-- Main content-->
    <section class="container" style="margin-bottom: 5rem;">
        <div class="container">
            <div class="boardTitle">
                <h2 class="Wrap_tabtitle" style="font-weight: bold" id="projectName">
                    <%-- <input type="text" id="title" value="${title }" /> --%>
                    <div id=title></div>
                </h2> <!-- 비법 거래소 -->
            </div>
            <div class="boardSection" style="padding: 1rem">
                <div>
                    <div>
                        <h5 style="font-weight: 700;">&emsp;* 모집현황</h5>
                    </div>
                    <article class="recruitment_Status">
                        <div id="recruitment"  class="recruitment_Status_content content_center">
                        </div>
                        <!--                             	<div id="recruitment_count">
                                                    <span>1</span>
                                                    </div>
                                                    <span>/</span>
                                                    <div id="recruitment_num">
                                                    <span>1</span>
                                                    </div>
                                                    <button type="button" class="btn btn-sm col-2 btn-outline-secondary apply">
                                                            지원
                                                    </button> -->
                    </article>
                </div>
                <div class="leaderInfo">
                    <div>
                        <h5 style="font-weight: 700;">&emsp;*리더 정보</h5>
                    </div>
                    <div class="leaderInfoDiv">
                        <div class="leaderInfo1">
                            <div class="leaderInfo1_imgId">
                                <div class="leaderInfo1_imgDiv">
                                    <img class="leaderInfo1_img" src="../assets/account-circle.png">
                                </div>
                                <div class="leaderInfo1_idDiv">
                                    <div id="team-leader" class="leaderInfo1_id"></div><!-- yoongi -->
                                </div>
                            </div>
                            <div>
                                <div class="leaderInfo1_techLanDiv">
                                    <span class="leaderInfo1_techLan">기술/언어</span>
                                </div>
                                <div id="leaderTech" class="leaderInfo1_iconDiv">
                                    <!-- <img class="image" src=" ../assets/icon/figma.png">
                                    <img class="image" src=" ../assets/icon/git.png">
                                    <img class="image" src=" ../assets/icon/android.png">
                                    <img class="image" src=" ../assets/icon/docker.png">
                                    <img class="image" src=" ../assets/icon/aws.png">
                                    <img class="image" src=" ../assets/icon/tensorflow.png">
                                    <img class="image" src=" ../assets/icon/java.png"> -->
                                </div>
                            </div>
                        </div>
                        <div class="leaderInfo2">
                            <div class="leaderInfo2_periodTitleDiv">
                                <span class="leaderInfo2_periodTitle">프로젝트 기간</span>
                            </div>
                            <div class="leaderInfo2_periodDiv">
                                <div id="start-date" class="leaderInfo2_period"></div> <!-- 23.04.17 -->
                                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~</span>
                                <div id="due-date" class="leaderInfo2_period"></div><!-- 23.05.03 -->
                            </div>
                            <hr />
                        </div>
                        <div class="leaderInfo3">
                            <div class="leaderInfo3_fieldTitleDiv">
                                <span class="leaderInfo3_fieldTitle">프로젝트 분야</span>
                            </div>
                            <div id="field" class="leaderInfo3_fieldDiv">
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <h5 style="font-weight: 700;">&emsp;* 프로젝트 설명</h5>
                    </div>
                    <div class="project_explainBox">
                        <div id='content' class="project_description" />

                    </div>
                </div>
                <div>
                    <div>
                        <h5 style="font-weight: 700;">&emsp;* 기술/언어</h5>
                    </div>

                    <div class="techLan">
                        <div id="techLan" class="techLan_icon" >
                            <!-- <img src=" ../assets/icon/android.png">
                                            <br>
                                            <span>android</span> -->
                        </div>
                    </div>
                    <div class="board_memberDiv">
                        <div>
                            <h5 style="font-weight: 700;">&emsp;* 멤버정보</h5>
                        </div>
                        <div class="board_memberArea">



                            <!-- 동적으로 멤버카드 더해짐 -->
<%--                            <div class="board_member">--%>
<%--                                <div class="board_member1">--%>
<%--                                    <div class="board_member1_img">--%>
<%--                                        <img class="img" src="../assets/account-circle.png">--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <span class="board_member1_id">Baek</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="board_member2">--%>
<%--                                    <span class="board_member2_field">UI/UX 디자인</span>--%>
<%--                                </div>--%>
<%--                                <div class="board_member3">--%>
<%--                                    <div>--%>
<%--                                        <span class="board_member3_techLan">기술/언어</span>--%>
<%--                                    </div>--%>
<%--                                    <div class="board_member3_icon">--%>
<%--                                        <img class="image" src=" ../assets/icon/cc.png">--%>
<%--                                        <img class="image" src=" ../assets/icon/docker.png">--%>
<%--                                        <img class="image" src=" ../assets/icon/android.png">--%>
<%--                                        <img class="image" src=" ../assets/icon/docker.png">--%>
<%--                                        <img class="image" src=" ../assets/icon/aws.png">--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

                            <!--멤버 카드 End-->


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
        <div><img class="pmelogo" src="../assets/icon/pmelogo.png"></div>
        <div class="div_center_tit" style="padding: 0; text-align: center; font-size: 1.2rem;">

        </div>
        <div class="div_center">
            <p>지원사유</p>
            <textarea class="div_content"></textarea>

            <button type="button" class="btn btn-outline-secondary radious applyBtn" style="margin: 30px 10px 0px 10px; width: 90px;">지원 완료</button>
            <button type="button" class="btn btn-outline-secondary radious applyCancelBtn" style="margin: 30px 10px 0px 10px; width: 90px;">취소</button>
        </div>




    </div>
</div>




<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/letspl.js"></script>
<script src="../js/projectDetail.js"></script> <!--projectMember, recruitment 합침 -->
<script src="../js/logout.js"></script>

</body>

</html>
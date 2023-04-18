<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Project With Me - ProjectWrite</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <!-- datepicker(달력) -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
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
                    <img src="http://localhost:8080/prome/assets/logo.png" style="cursor: pointer" />

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
                            <img src="http://localhost:8080/prome/assets/btn-logout.png" />
                        </button>

                        <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true"
                            aria-expanded="false" data-bs-toggle="dropdown" style="margin-right: 0.5rem">
                            <img src="http://localhost:8080/prome/assets/account-circle.png" />
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
                  background-image: url('http://localhost:8080/prome/assets/main-banner.png');
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
                        <span class="h2" style="font-weight: bold">모임 생성</span>
                    </div>
                    <div class="section">
                        <div class="p-2">
                            <!-- 프로젝트명 start -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 프로젝트명</span>
                                </div>
                                <div class="project_namebox">
                                    <input name="project_name" required="required" placeholder="3~20글자로 적어주세요 예)승차거부 신고앱" minLength="3" maxLength="20" value=""
                                        autoComplete="on" />
                                </div>
                            </div>
                            <!-- 프로젝트명 end -->
                            <!-- 프로젝트 분야 start  -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 프로젝트 분야</span>
                                </div>
                                <div class="answer">
                                    <div class="project_fieldbox ">
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="01">
                                            <span class="txt"><b>공유서비스</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="02">
                                            <span class="txt"><b>여행</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="03">
                                            <span class="txt"><b>소셜 네트워크</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="04">
                                            <span class="txt"><b>뷰티/패션</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="05">
                                            <span class="txt"><b>게임</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="06">
                                            <span class="txt"><b>이커머스</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="07">
                                            <span class="txt"><b>금융</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="08">
                                            <span class="txt"><b>부동산</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="09">
                                            <span class="txt"><b>교육</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="field_radio">
                                            <input type="radio" name="step2_radio" value="10">
                                            <span class="txt"><b>의료/병원</b></span>
                                            <span class="checkmark"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 프로젝트 분야 end  -->
                            <!-- 모집 인원 start -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 모집 인원</span>
                                </div>
                            </div>
                            <!-- 모집 인원 end -->
                            <!-- 프로젝트 설명 start -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 프로젝트 설명</span>
                                </div>
                                <div class="project_explain" aria-expanded="false"
                                    style="min-height: 500px; max-height: max-content;">
                                    <div contenteditable="true" translate="no" class="ProseMirror" tabindex="0">
                                        <h1 style="font-size: 18px;font-weight:normal">1. 프로젝트의 시작 동기</h1>
                                        <p style="font-size: 14px;line-height:21px">&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px">- 왜 이 서비스를 만드시고 싶은지 적어주세요&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp;(ex - 국내여행을 가려고 하는데 어떤곳이 좋은지에
                                                대한 경험이 없어서 어려웠습니다.)&nbsp;</span></p>
                                        <p style="font-size: 14px;line-height:21px">- 만들고자 하는 서비스에 대해 알려주세요&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp;(ex - 계절별/축제별 국내여행을 모아서 추천해주는
                                                서비스를 만들고자합니다.)&nbsp;</span></p>
                                        <p style="font-size: 14px;line-height:21px">- 어떤 사용자들을 타겟하고 있는지 적어주세요&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp;(ex - 혼자 여행하는 것에 꺼리낌이 없는 30대
                                                이상의 미혼 남녀를 대상으로 합니다)&nbsp;</span></p>
                                        <p style="font-size: 14px;line-height:21px">&nbsp;</p>
                                        <h1 style="font-size: 18px;font-weight:normal">2. 회의 진행/모임 방식&nbsp;</h1>
                                        <p style="font-size: 14px;line-height:21px">&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px">- 1주에 몇번정도 회의나 모임을 진행할 계획인가요?&nbsp;
                                        </p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp;(ex - 1주일에 1회/2회 정도 정기적으로
                                                회의합니다)</span></p>
                                        <p style="font-size: 14px;line-height:21px">- 온/오프라인 회의 진행시 진행방식을 적어주세요&nbsp;
                                        </p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp;(ex - 온라인은 줌을 활용하고, 오프라인은 강남역
                                                카페등을 대관할예정입니다, 커뮤니케이션은 슬랙을 위주로 사용합니다 )</span></p>
                                        <p style="font-size: 14px;line-height:21px">&nbsp;</p>
                                        <h1 style="font-size: 18px;font-weight:normal">3. 그외 자유기재&nbsp;</h1>
                                        <p style="font-size: 14px;line-height:21px">&nbsp;</p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">-&nbsp; 2번까지의 내용을 포함할 수 있도록
                                                작성해주세요(형식은 달라도 상관없습니다)</span></p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">-&nbsp; 신청시 기타사항과 질문내용 등을 삭제한 후 답변만
                                                등록해주세요.&nbsp;</span></p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">&nbsp; (그외의 내용은 자유롭게 기입해주세요(영상/이미지
                                                포함)&nbsp;</span></p>
                                        <p style="font-size: 14px;line-height:21px"><span
                                                style="color: rgb(156, 156, 148)">-&nbsp; 상세 검수가이드라인은 공지사항을 참고해주세요.
                                            </span><a target="_blank" rel="noopener noreferrer nofollow"
                                                style="text-decoration: underline"
                                                href="https://letspl.me/notice/80"><span
                                                    style="color: rgb(156, 156, 148)">https://letspl.me/notice/80</span></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- 프로젝트 설명 end -->
                            <!-- 기간 start -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 기간</span>
                                </div>
                                <div class="flex space-x-5">
                                    <div>
                                        <label for="start-date" class="block text-xl mb-2">&nbsp;Start Date</label>
                                        <input type="date" id="start-date" class="border-2 border-gray-300 p-2 rounded">
                                    </div>
                                    <div>
                                        <label for="end-date" class="block text-xl mb-2">&nbsp;End Date</label>
                                        <input type="date" id="end-date" class="border-2 border-gray-300 p-2 rounded">
                                    </div>
                            </div>
                            <!-- 기간 end -->
                            <!-- 기술/언어 start -->
                            <div class="p-4">
                                <span class="h5" style="font-weight: 800;">* 기술/언어</span>
                                <div class="card border-light mb-3" style="width: auto;">
                                    <div class="card-body">
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/android.png">
                                            </button><br>
                                            <span>android</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/aws.png">
                                            </button><br>
                                            <span>aws</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/cc.png">
                                            </button><br>
                                            <span>C/C#</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/docker.png">
                                            </button><br>
                                            <span>docker</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/figma.png">
                                            </button><br>
                                            <span>figma</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/flutter.png">
                                            </button><br>
                                            <span>flutter</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/git.png">
                                            </button><br>
                                            <span>git</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/html.png">
                                            </button><br>
                                            <span>html/css</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/ios.png">
                                            </button><br>
                                            <span>ios</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/js.png">
                                            </button><br>
                                            <span>js</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/java.png">
                                            </button><br>
                                            <span>java</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/kotlin.png">
                                            </button><br>
                                            <span>kotlin</span>
                                        </div>
                                        <div class="icon">
                                            <button style="border: 0; background-color: white;">
                                                <img src="http://localhost:8080/prome/assets/icon/kubernetes.png">
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
                            <!-- 기술/언어 end -->
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
    <script src="../js/scripts.js"></script>
    <!-- datepicker(달력) -->    
    <script>
        const startDate = document.getElementById("start-date");
        const endDate = document.getElementById("end-date");

        startDate.addEventListener("change", (e) => {
            const minEndDate = e.target.value;
            endDate.setAttribute("min", minEndDate);
        });
    </script>
</body>

</html>
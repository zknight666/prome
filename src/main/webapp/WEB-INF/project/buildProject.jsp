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
    <!-- <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet"> -->
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
                
                	<a href="/prome/">
                  	  <img src="../assets/logo.png" style="cursor: pointer" />
					</a>
					
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                                aria-haspopup="true" aria-expanded="false"></a>
                            <div class="dropdown-menu">
                                <div class="dropdown-item">*******님</div>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/prome/users/mypage">마이페이지</a>
                                <a class="dropdown-item" href="/prome/project/applicants">내 모임 지원자 관리</a>
                                <a class="dropdown-item" href="/prome/users/userinfo">회원 정보 수정</a>
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
                    <!-- submit용 form -->
                    <form id="buildProjectForm">
                    
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
                                    
									<div class="row mb-3" id="recruitContainer">
							          <div class="recruit" style="display: flex; align-items: center">
							          
							            <div class="form-group">
							              <select class="form-select" id="exampleSelect1" name="recruitment_field" required="required">
							                <option value="0000">모집분야</option>
								                <optgroup label="기획">
								                  <option value="0201">UI/UX기획</option>
								                  <option value="0202">게임기획</option>
								                  <option value="0203">프로젝트 매니저</option>
								                  <option value="0204">(기획)기타</option>
								                </optgroup>
								                <optgroup label="디자인">
								                  <option value="0301">그래픽디자인</option>
								                  <option value="0302">UI/UX디자인</option>
								                  <option value="0303">(디자인)기타</option>
								                </optgroup>
								                <optgroup label="프론트엔드">
								                  <option value="0401">IOS</option>
								                  <option value="0402">안드로이드</option>
								                  <option value="0403">웹프론트엔드</option>
								                  <option value="0404">웹퍼블리셔</option>
								                  <option value="0405">크로스플랫폼</option>
								                </optgroup>
								                <optgroup label="백엔드">
								                  <option value="0501">웹 서버</option>
								                  <option value="0502">AI</option>
								                  <option value="0503">빅데이터/DS</option>
								                  <option value="0504">블록체인</option>
								                </optgroup>
							              </select>
							            </div>
							            <div class="dummybox"></div>
							            
											<div class="plusMinusBtnWrap">&emsp;
												<img class="imageBtnminus" alt="" src="../assets/images/imageBtnminus.png">
												<input type="text" class="recruit_countNumber" name="recruit_count_0" value="1" readonly="readonly">
												<img class="imageBtnplus" alt="" src="../assets/images/imageBtnplus.png">
											</div>
											

	
								      														

								      		
						         	  </div>
								    </div>
								    
		                            <div class="flex btn-position recruitbtn">
							            <div class="dummybox2"></div>
		                                <button type="button" class="btn btn-outline-dark mx-3 recruit_minus">삭제</button>
		                                <button type="button" class="btn btn-outline-dark recruit_plus">추가</button>
		                            </div>									                                    
                                    
                                    
                                </div>
                                
                                
                                
                            </div><!-- p-4 -->
                            <!-- 모집 인원 end -->
                            <!-- 프로젝트 설명 start -->
                            <div class="p-4">
                                <div>
                                    <span class="h5" style="font-weight: 800;">* 프로젝트 설명</span>
                                </div>
                                <div class="project_explain" aria-expanded="false"
                                    style="min-height: 500px; max-height: max-content;">
                                    
                                    <input type="hidden" id="project_description" name="project_description" value=""> <!-- 프로젝트 설명 submit용 input태그 -->
                                    <div contenteditable="true" translate="no" class="ProseMirror" tabindex="0" style="padding-top:5px; ">
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
                                        <label for="start-date" class="block text-xl mb-2">&nbsp;프로젝트 시작 기간&nbsp;</label>
                                        <input type="date" id="start-date" name="start-date" class="border-2 border-gray-300 p-2 rounded">
                                    </div>
                                    <div>
                                        <label for="end-date" class="block text-xl mb-2">&nbsp;프로젝트 종료 기간&nbsp;</label>
                                        <input type="date" id="end-date" name="end-date" class="border-2 border-gray-300 p-2 rounded">
                                    </div>
                                </div>
                            </div>
                            <!-- 기간 end -->
                            <!-- 기술/언어 start -->
							<div class="p-4">
							    <span class="h5" style="font-weight: 800;">* 기술/언어</span>
							    <div class="card border-light mb-3" style="width: auto;">
							        <div class="card-body">
							            <div class="icon">
							                <input type="checkbox" id="android" name="android" value="n" class="icon">
							                <label for="android"><em></em><br><span>android</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="aws" name="aws" value="n" class="icon">
							                <label for="aws"><em></em><br><span>aws</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="c" name="C/C#" value="n" class="icon">
							                <label for="c"><em></em><br><span>C/C#</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="docker" name="docker" value="n" class="icon">
							                <label for="docker"><em></em><br><span>docker</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="figma" name="figma" value="n" class="icon">
							                <label for="figma"><em></em><br><span>figma</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="flutter" name="flutter" value="n" class="icon">
							                <label for="flutter"><em></em><br><span>flutter</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="git" name="git" value="n" class="icon">
							                <label for="git"><em></em><br><span>git</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="html" name="html/css" value="n" class="icon">
							                <label for="html"><em></em><br><span>html/css</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="ios" name="ios" value="n" class="icon">
							                <label for="ios"><em></em><br><span>ios</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="javascript" name="javascript" value="n" class="icon">
							                <label for="javascript"><em></em><br><span>javascript</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="java" name="java" value="n" class="icon">
							                <label for="java"><em></em><br><span>java</span></label>
							            </div>
							            <div class="icon">
							                <input type="checkbox" id="kotlin" name="kotlin" value="n" class="icon">
							                <label for="kotlin"><em></em><br><span>kotlin</span></label>
							            </div>
                                        <div class="icon">
                                            <input type="checkbox" id="kubernetes" name="kubernetes" value="n" class="icon">
								            <label for="kubernetes"><em></em><br><span>kubernetes</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="mongodb" name="mongodb" value="n" class="icon">
								            <label for="mongodb"><em></em><br><span>mongodb</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="mysql" name="mysql" value="n" class="icon">
								            <label for="mysql"><em></em><br><span>mysql</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="nodejs" name="nodejs" value="n" class="icon">
								            <label for="nodejs"><em></em><br><span>nodejs</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="photoshop" name="photoshop" value="n" class="icon">
								            <label for="photoshop"><em></em><br><span>photoshop</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="python" name="python" value="n" class="icon">
								            <label for="python"><em></em><br><span>python</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="react" name="react" value="n" class="icon">
								            <label for="react"><em></em><br><span>react</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="spring" name="spring" value="n" class="icon">
								            <label for="spring"><em></em><br><span>spring</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="tensorflow" name="tensorflow" value="n" class="icon">
								            <label for="tensorflow"><em></em><br><span>tensorflow</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="typescript" name="typescript" value="n" class="icon">
								            <label for="typescript"><em></em><br><span>typescript</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="unity" name="unity" value="n" class="icon">
								            <label for="unity"><em></em><br><span>unity</span></label>
								        </div>
								        <div class="icon">
								            <input type="checkbox" id="vue" name="vue" value="n" class="icon">
								            <label for="vue"><em></em><br><span>vue</span></label>                                       
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- class="p-4" -->
                            <!-- 기술/언어 end -->
                            <div class="pb-4 flex btn-position">
                                <button type="button" class="btn btn-outline-dark mx-3">임시저장</button>
                                <button type="button" id="submitBtn" class="btn btn-outline-dark">작성완료</button>
                            </div>
                        </div>
                        </form>
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

	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>    
    <script type="text/javascript" src="../js/buildProjectjs.js"></script>
    
</body>

</html>
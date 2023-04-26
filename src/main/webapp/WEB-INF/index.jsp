<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
=======
    pageEncoding="UTF-8"%>
    
    <% %>
>>>>>>> origin/develop-buildproject
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Project With Me - Home</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/letspl.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link rel="stylesheet" href="css/modal_01_signup.css">
<link rel="stylesheet" href="css/modal_02_login.css">
</head>

<body>
	<!-- hidden -->
	<input type="hidden" id="memId" value="${param.id}">
	<!-- hidden -->
	<div class="container">
		<!-- Navigation-->
		<nav class="navbar navbar-expand-lg navbar-light bg-light"
			style="background: rgb(39, 146, 212); background: linear-gradient(90deg, rgba(39, 146, 212, 1) 0%, rgba(78, 99, 221, 1) 100%); border: none; margin: 0;">
			<!--style="background-color: #1A6DFF !important;"-->
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarColor03"
					aria-controls="navbarColor03" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

<<<<<<< HEAD
				<div class="collapse navbar-collapse" id="navbarColor03">
					<img id="logo" src="assets/logo.png" style="cursor: pointer" />
=======
        <div class="collapse navbar-collapse" id="navbarColor03">
          <img src="assets/logo.png" style="cursor: pointer" onclick="location.href='/prome/'" />
>>>>>>> origin/develop-buildproject

					<ul class="navbar-nav me-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false"></a>
						</li>
					</ul>
					<!-- 세션 x -->
					<div id="non_session"
						style="display: flex; align-content: center; align-items: center;">
						<form class="d-flex dropdown">
							<button class="btn my-2 my-sm-0" id="loginBtn" type="button"
								style="padding-right: 0">
								<img src="assets\btn-login.png" />
							</button>
							<button class="btn my-2 my-sm-0" type="button"
								style="padding-right: 0; padding-left: 0;">
								<img class="signUp" src="./assets\btn-signup.png" />
							</button>
						</form>
					</div>
					<!-- 세션 o -->
					<div id="session"
						style="display: flex; align-content: center; align-items: center;">
						<form class="d-flex dropdown">
							<button class="btn my-2 my-sm-0" id="logoutBtn" type="button"
								style="padding-right: 0">
								<img src="./assets\btn-logout.png" />
							</button>

<<<<<<< HEAD
							<button class="btn my-2 my-sm-0 nav-link dropdown-toggle"
								aria-haspopup="true" aria-expanded="false"
								data-bs-toggle="dropdown" style="margin-right: 0.5rem">
								<img src="./assets\account-circle.png" />
							</button>
							<div class="dropdown-menu" style="right: 0">
								<div class="dropdown-item">${param.id} 님</div>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" id="mypageBtn">마이페이지</a> <a
									class="dropdown-item" href="#">내 모임 지원자 관리</a> <a
									class="dropdown-item" id="userinfoBtn">회원 정보 수정</a>
								<div class="dropdown-divider"></div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</nav>
		<!-- Header-->
		<header class="bg-dark"
			style="background-image: url('assets/main-banner.png'); background-size: auto; background-repeat: no-repeat; background-position: center; height: auto; min-height: 400px; background-color: #ffffff !important;"></header>
=======
          <form class="d-flex dropdown">
            <!-- <input class="form-control me-sm-2" type="search" placeholder="Search" /> -->
            <button class="btn my-2 my-sm-0" id="loginBtn" type="button" style="padding-right: 0">
              <img src="assets\btn-login.png" />
            </button>
            <!-- <button class="btn my-2 my-sm-0" type="button" style="padding-right: 0">
                <img src="assets\btn-logout.png" />
              </button> -->
            <button class="btn my-2 my-sm-0" type="button" style="padding-right: 0;
            padding-left: 0;" onclick="location.href='/prome/users/join'">
              <img src="assets\btn-create.png" />
            </button>
            <!--  
            <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true" aria-expanded="false"
              data-bs-toggle="dropdown" style="margin-right: 0.5rem">
              <img src="assets\account-circle.png" />
            </button>
            <div class="dropdown-menu" style="right: 0">
              <div class="dropdown-item">*******님</div>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">마이페이지</a>
>>>>>>> origin/develop-buildproject

		<!-- Section-->
		<section class="container">
			<div class="container px-4 px-lg-5 mt-5">
				<!--첫번째 줄-->
				<div class="row mb-3">
					<div class="col" style="display: flex">
						<span class="h2" style="font-weight: bold">전체 프로젝트</span>
					</div>

					<div class="col" style="display: flex; flex-direction: row-reverse">
						<button type="button" class="btn btn-primary"
							style="background: rgb(28, 124, 224); border: none"
							onclick="location.href='/prome/project/buildProject?id=${param.id}'">
							모임 생성</button>
					</div>
				</div>

				<!--2번째 줄-->
				<div class="row mb-3">
					<div style="display: flex; align-items: center">
						<div class="form-group">
							<select class="form-select" id="exampleSelect1">
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

						<div class="form-check col" style="margin-left: 1.5rem">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckChecked" checked="" /> <label
								class="form-check-label" for="flexCheckChecked"> 모집중</label>
						</div>
					</div>
				</div>

<<<<<<< HEAD
				<!--카드 섹션 시작-->
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 mb-4">

					<!--카드-1-->
					<div class="col mb-4">
						<div class="projectGridWrap"
							style="min-width: 260px; padding-left: 0; padding-right: 0">
							<div class="projectTopInfo">
								<div class="top" style="flex-direction: row-reverse">
									<div class="favorite"></div>
								</div>
								<div class="projectThumb">
									<img loading="lazy" src="assets/images/project_thumb_13.png"
										alt="내 글이 상장되는 ‘비법거래소'입니다" style="vertical-align: middle" />
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap projectWrap">
									<h3 class="category">소셜네트워크</h3>
									<h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
									<div class="iconWrap2">
										<img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
											alt="Figma" title="Figma" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
											alt="Flutter" title="Flutter" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg"
											alt="React" title="React" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
											alt="AWS" title="AWS" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg"
											alt="NodeJS" title="NodeJS" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg"
											alt="Spring" title="Spring" />
									</div>
								</div>
							</div>
							<div class="projectInfo2">


								<div class="middleWrap">
									<div class="left"></div>
									<div class="right">
										<div class="heartCount">
											<img loading="lazy"
												src="assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
										</div>
									</div>
								</div>


								<div class="bottomWrap">
									<div class="gatherTxt">
										<div>
											<span>모집완료</span><span>2/8</span>
											<div class="ic-arrow">
												<img loading="lazy" src="assets/images/ic-arrow-up.svg"
													alt="프로젝트 모집현황" />
											</div>
										</div>
										<div class="gatherModal">
											<ul>
												<h3>
													<li><span>그래픽디자인</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>UI/UX디자인</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>크로스플랫폼</span><span>2명</span></li>
												</h3>
												<h3>
													<li><span>작가/블로거</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>투자/고문</span><span>1명</span></li>
												</h3>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--카드 End-->

					<!--카드-2-->
					<div class="col mb-4">
						<div class="projectGridWrap"
							style="min-width: 260px; padding-left: 0; padding-right: 0">
							<div class="projectTopInfo">
								<div class="top" style="flex-direction: row-reverse">
									<div class="favorite"></div>
								</div>
								<div class="projectThumb">
									<img loading="lazy" src="assets/images/project_thumb_13.png"
										alt="내 글이 상장되는 ‘비법거래소'입니다" style="vertical-align: middle" />
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap projectWrap">
									<h3 class="category">소셜네트워크</h3>
									<h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
									<div class="iconWrap2">
										<img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
											alt="Figma" title="Figma" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
											alt="Flutter" title="Flutter" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg"
											alt="React" title="React" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
											alt="AWS" title="AWS" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg"
											alt="NodeJS" title="NodeJS" /><img loading="lazy"
											src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg"
											alt="Spring" title="Spring" />
									</div>
								</div>
							</div>
							<div class="projectInfo2">
								<div class="middleWrap">
									<div class="left"></div>
									<div class="right">
										<div class="heartCount">
											<img loading="lazy"
												src="assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
										</div>
									</div>
								</div>
								<div class="bottomWrap">
									<div class="gatherTxt">
										<div>
											<span>모집완료</span><span>2/8</span>
											<div class="ic-arrow">
												<img loading="lazy" src="assets/images/ic-arrow-up.svg"
													alt="프로젝트 모집현황" />
											</div>
										</div>
										<div class="gatherModal">
											<ul>
												<h3>
													<li><span>그래픽디자인</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>UI/UX디자인</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>크로스플랫폼</span><span>2명</span></li>
												</h3>
												<h3>
													<li><span>작가/블로거</span><span>1명</span></li>
												</h3>
												<h3>
													<li><span>투자/고문</span><span>1명</span></li>
												</h3>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--카드 End-->









				</div>

				<!--페이징 섹션 시작-->
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<div style="width: auto">
						<ul class="pagination pagination-lg">
							<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
							</li>
							<li class="page-item active"><a class="page-link" href="#">1</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">&raquo;</a>
							</li>
						</ul>


					</div>
				</div>
			</div>
		</section>
=======
        <!--2번째 줄-->
        <div class="row mb-3">
          <div style="display: flex; align-items: center">
            <div class="form-group">
              <select class="form-select" id="exampleSelect1" name="recruitment_field">
                <option value="전체보기">모집분야</option>
                <optgroup label="기획">
                  <option value="UI_UX_PLAN">UI/UX기획</option>
                  <option value="GAME_PLAN">게임기획</option>
                  <option value="PM">프로젝트 매니저</option>
                  <option value="PLAN_ETC">(기획)기타</option>
                </optgroup>
                <optgroup label="디자인">
                  <option value="GRAPHIC_DESIGN">그래픽디자인</option>
                  <option value="UI_UX_DESIGN">UI/UX디자인</option>
                  <option value="DESIGN_ETC">(디자인)기타</option>
                </optgroup>
                <optgroup label="프론트엔드">
                  <option value="IOS">IOS</option>
                  <option value="ANDROID">안드로이드</option>
                  <option value="WEB_FE">웹프론트엔드</option>
                  <option value="WEB_PUBLISHER">웹퍼블리셔</option>
                  <option value="CROSS_FLATFORM">크로스플랫폼</option>
                </optgroup>
                <optgroup label="백엔드">
                  <option value="WEB_SERVER">웹 서버</option>
                  <option value="AI">AI</option>
                  <option value="BIG_DATA">빅데이터/DS</option>
                  <option value="BLOCK_CHAIN">블록체인</option>
                </optgroup>
              </select>
            </div>

            <div class="form-check col" style="margin-left: 1.5rem">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked="" />
              <label class="form-check-label" for="flexCheckChecked"> 모집중</label>
            </div>
          </div>
        </div>

        <!--카드 섹션 시작-->
        <div id="card_section" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-start mb-4">

        </div>
>>>>>>> origin/develop-buildproject

		<!-- Footer-->
		<footer class="py-5 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; ProMe
					2023</p>
			</div>
		</footer>
	</div>

	<div class="modalWrapClose_1">
		<div class="loginModal_1">
			<p class="modalTit_1">회원 가입하기</p>
			<button class="closeBtn_1">
				<img loading="lazy" src="./assets/icon/ic-close.svg" alt="close">
			</button>
			<button class="loginBtn_1 naver">네이버 아이디로 가입</button>
			<button class="loginBtn_1 kakao" onclick="location.href='javascript:KakaoLogin()'">카카오 계정으로 가입</button>
			<button class="loginBtn_1 facebook">페이스북 계정으로 가입</button>
			<button class="loginBtn_1 google">구글 계정으로 가입</button>
			<p class="loginNoticeTxt">
				소셜 로그인으로 가입 시 <a target="_blank" href="/tnc/service_policy">이용약관,&nbsp;</a>
				<a target="_blank" href="/tnc/privacy_policy">개인정보처리방침,&nbsp;</a> <a
					target="_blank" href="/tnc/payment_policy"> 전자금융거래약관</a>에 동의함으로
				처리됩니다
			</p>
			<a class="signupBtn_1">로그인</a>
		</div>
	</div>

	<div class="modalWrapClose">
		<div class="loginModal" style="padding-bottom: 30px;">
			<p class="modalTit">로그인</p>
			<button class="closeBtn">
				<img loading="lazy" src="./assets/icon/ic-close.svg" alt="close">
			</button>
			<div>
				<img class="pmelogo" src="./assets/icon/pmelogo.png">
			</div>
			*ID
			<div class="div_center">
				<input class="div_id" id="prome_id" type="text">
			</div>
			*Password
			<div class="div_center">
				<input class="div_password" id="prome_pwd" type="password">
			</div>


			<button type="button" id="login"
				class="btn btn-outline-secondary radious">로그인</button>
			<button type="button"
				class="btn btn-outline-secondary radious signUp">회원가입</button>

		</div>
	</div>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/letspl.js"></script>
	<script src="js/scripts.js"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="./js/login.js"></script>
	<script type="text/javascript">
		/* 세션에 따른 nav 변화 */
		$(function() {
			if ($('#memId').val() == '') {
				$('#session').attr("style", "display:none;");
				$('#non_session').attr("style", "display:flex;");
			} else if ($('#memId').val() != '') {
				$('#session').attr("style", "display:flex;");
				$('#non_session').attr("style", "display:none;");
			}
		});

		/* 버튼 관련 */
		$('#logoutBtn').click(function() {
			$('#memId').val('');
			location.replace('/prome/');
		});
		$('.signUp').click(function() {
			location.href = '/prome/users/join';
		});
		$('#logo').click(function() {
			location.href = '/prome?id='+$('#memId').val();
		});

		// modal
		$("#loginBtn").click(function() {
			$(".loginModal_1").parent().attr("class", "modalWrapOpen_1");
		});

<<<<<<< HEAD
		$(".closeBtn_1").click(function() {
			$(".loginModal_1").parent().attr("class", "modalWrapClose_1");
		});
		$(".closeBtn").click(function() {
			$(".loginModal").parent().attr("class", "modalWrapClose");
		});
		$('.signupBtn_1').click(function() {
			$(".loginModal").parent().attr("class", "modalWrapOpen");
			$(".loginModal_1").parent().attr("class", "modalWrapClose_1");
		});
	</script>
	<!-- sns 로그인 -->
	<script type="text/javascript"
		src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
	<script type="text/javascript">
		window.Kakao.init("13e23dd91c08ebf7c2ee79eee67a16fd");
		function KakaoLogin() {
			window.Kakao.Auth.login({
				scope:'profile_nickname',
				success: function(authObj){
					console.log(authObj);
					window.Kakao.API.request({
						url:'/v2/user/me',
						success: res => {
							const kakao_account=res.kakao_account;
							console.log(kakao_account);
							var id = kakao_account.profile.nickname;
							console.log(id);
							$.ajax({
								type: "post",
							    url: "/prome/users/getUser",
							    data: "id=" + id,
							    success: function (data) {
							    	console.log(id);
							    	console.log(JSON.stringify(data));
							    	if (data=='') {
							    		$.ajax({
							    		    type: "post",
							    		    url: "/prome/users/signup",
							    		    data: "id=" + id,
							    			success: function (data) {
							    				alert("회원가입되셨습니다.");
							    				//location.replace('/prome?id='+id);
							    			},
							    			error: function (err) {
							        	        alert("회원가입 실패했습니다.");
							        	    }
							    		});
							        } else if (data!= '') {
							        	//location.replace('/prome?id='+id);	
							        }
							   	},
							    error: function (err) {
							        
							    },
							});
							
						}
					})
				}
			});
		}
	</script>
=======
      <button type="button" class="btn btn-outline-secondary radious">로그인</button>
      <button type="button" class="btn btn-outline-secondary radious" onclick="location.href='/prome/users/join'" >회원가입</button>
    </div>
  </div>

  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/letspl.js"></script>

  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script type="text/javascript">
    // modal
    $("#loginBtn").click(function () {
      $(".loginModal_1").parent().attr("class", "modalWrapOpen_1");
    });
    
    $(".closeBtn_1").click(function () {
      $(".loginModal_1").parent().attr("class", "modalWrapClose_1");
    });
    
    $(".closeBtn").click(function () {
        $(".loginModal").parent().attr("class", "modalWrapClose");
      });
    
    $('.signupBtn_1').click(function () {
      $(".loginModal").parent().attr("class", "modalWrapOpen");
      $(".loginModal_1").parent().attr("class", "modalWrapClose_1");
    });
  </script>
  <script src="js/index_script.js"></script>
>>>>>>> origin/develop-buildproject
</body>

</html>
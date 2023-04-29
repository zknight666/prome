<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Project With Me - Application</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
  <style type="text/css">
	.hover_tr:hover{
	  background: #cacaca;
	}
	.check_checkbox:hover{
	  cursor: pointer;	
	}
  </style>
</head>

<body>
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

				<div class="collapse navbar-collapse" id="navbarColor03">
					<img id="logo" src="../assets/logo.png" style="cursor: pointer" />

					<ul class="navbar-nav me-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false"></a>
						</li>
					</ul>

					<form class="d-flex dropdown">
						<!-- <input class="form-control me-sm-2" type="search" placeholder="Search" /> -->
						<button class="btn my-2 my-sm-0" id="logoutBtn" type="button"
							style="padding-right: 0">
							<img src="../assets\btn-logout.png" />
						</button>

						<button class="btn my-2 my-sm-0 nav-link dropdown-toggle"
							aria-haspopup="true" aria-expanded="false"
							data-bs-toggle="dropdown" style="margin-right: 0.5rem">
							<img src="../assets\account-circle.png" />
						</button>
						<div class="dropdown-menu" style="right: 0">
							<div class="dropdown-item">${user_id}님</div>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" id="mypageBtn" href="/prome/users/mypage">마이페이지</a> 
							<a class="dropdown-item" href="/prome/project/applicants">내 모임 지원자 관리</a> 
							<a class="dropdown-item" id="userinfoBtn" href="/prome/users/userinfo">회원 정보 수정</a>
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
        <input type="hidden" id="memId" value="${param.id}">
       <%--  <input type="text" id="memId" value="${memId}"> --%>
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row mb-3">
                    <div class="col pb-2" style="display: flex">
                        <span class="h2" style="font-weight: bold">프로젝트 지원자 관리</span>
                    </div>
                    <div class="section" style="display: flex">
                        <div id="eachProjectDiv" class="m-4" style="height: 100%;">
                            <!-- 동적 처리로 들어와야 할 거에요 ! 프로젝트 생성을 안 했을 경우 없습니다 띄워야 하니... -->
                            <!-- 프로젝트 단위 start -->
                            
                            <!-- 프로젝트 단위 end -->
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

    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../js/applicants.js"></script>
    <script src="./js/logout.js"></script>
    <script type="text/javascript">
    
	    $('#logo').click(function () {
	        location.href = '/prome';
	    }); 
    </script>
</body>

</html>
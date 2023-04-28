<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Project With Me - Admin Page</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
  <!-- Bootstrap icons-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="../css/letspl.css" rel="stylesheet" />
  <link href="../css/styles.css" rel="stylesheet" />
  <link href="../css/custom.css" rel="stylesheet" />
  <link href="../css/modal.css" rel="stylesheet" />
  <!-- <link href="css/custom-styles.css" rel="stylesheet" /> -->
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
  <input type="text" id="memId" value="${sessionScope.memId}">
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
          <img id="logo" src="../assets/logo.png" style="cursor: pointer" />

          <ul class="navbar-nav me-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                aria-expanded="false"></a>

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
            <button class="btn my-2 my-sm-0" id="logoutBtn" type="button"
				style="padding-right: 0">
				<img src="../assets\btn-logout.png" />
			</button>

            <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true" aria-expanded="false"
              data-bs-toggle="dropdown" style="margin-right: 0.5rem">
              <img src="../assets/account-circle.png" />
            </button>
            <div class="dropdown-menu" style="right: 0">
              <div class="dropdown-item">${sessionScope.memId}님</div>
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

    <!-- Section-->
    <section class="container">
      <div class="container px-4 px-lg-5 mt-5">


        <!--탭 메뉴 nav 시작-->
        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" data-bs-toggle="tab" href="#home" aria-selected="true" role="tab" style="font-size: 1.5rem;">프로젝트 관리</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="manageUser" data-bs-toggle="tab" href="#profile" aria-selected="false" role="tab" tabindex="-1" style="font-size: 1.5rem;">회원 관리</a>
          </li>      
        </ul>
       
        <div id="myTabContent" class="tab-content"> <!--탭 메뉴 nav End-->
         
          <div class="tab-pane fade active show" id="home" role="tabpanel"> <!--프로젝트 관리 탭 Content-->

            <!--모집분야 필터링-->
            <div class="row mb-3">
				<div style="display: flex; align-items: center">
					<div class="form-group">
						<select class="form-select" id="exampleSelect1"
							name="recruitment_field">
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
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckChecked" checked="" /> <label
							class="form-check-label" for="flexCheckChecked"> 모집중</label>
					</div>
				</div>
			</div>

        	<!--카드 섹션 시작-->
			<div id="card_section"
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-start mb-4">

			</div>
			
			<!--페이징 섹션 시작-->
            <input type="text" id="projectPg" value="${projectPg}">
	        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
	          <div id="projectPaging" style="width: auto; margin-top: 40px;">
	            ${pagingHTML}
	          </div>
	        </div>	        
	        <!--페이징 섹션 끝-->
	        
      	</div>
       
       </div>
          
      </div>


         <!--회원 관리 탭 Content-->
         <div class="tab-pane fade" id="profile" role="tabpanel">
           <div class="container px-4 px-lg-5 mt-5">
             <div class="row mb-3">
               <div class="col pb-2" style="display: flex">
                 <span class="h2" style="font-weight: bold">회원관리</span>
               </div>
               <div class="section height-m800">
                 <div class="m-4" style="height: auto;">
                   <!-- 동적 처리로 들어와야 할 거에요 ! 프로젝트 생성을 안 했을 경우 없습니다 띄워야 하니... -->
                   <!-- form start -->
                   <div style="height: auto; padding:0px 0px 16px 0px;">
                     <table style="border:1 solid #cacaca" width="100%">
                       <tbody>
                         <tr style="text-align: center;">
                           <td align="center" class="td_column_check_manager">
                             <input class="mx-4" type="checkbox" id="allcheck">
                           </td>
                           <th class="td_column_name_manager">이름</th>
                           <th class="td_column_id_manager">아이디</th>
                           <th class="td_column_gender_manager">성별</th>
                           <th class="td_column_email_manager">이메일</th>
                           <th class="td_column_phone_manager">휴대폰</th>
                           <th class="td_column_address_manager">주소</th>
                           <th class="td_column_subscription_manager">가입일</th>
                         </tr>
                       </tbody>
                     </table>
                     <hr class="m-0">
                     <div class="div_height_table_manager">
                       <table  width="100%" style="font-weight: 400;">
                         <tbody id="userListTable">
                           <tr style="text-align: center;">
                             <td align="center" class="td_column_check_manager">
                               <input class="mx-4 check_checkbox" type="checkbox">
                             </td>
                             <td class="td_column_name_manager">이름</td>
                             <td class="td_column_id_manager">아이디</td>
                             <td class="td_column_gender_manager">성별</td>
                             <td class="td_column_email_manager">이메일</td>
                             <td class="td_column_phone_manager">휴대폰</td>
                             <td class="td_column_address_manager">주소</td>
                             <td class="td_column_subscription_manager">가입일</td>
                           </tr>
                           <tr style="text-align: center;">
                             <td align="center" class="td_column_check_manager">
                               <input class="mx-4 check_checkbox" type="checkbox">
                             </td>
                             <td>이름</td>
                             <td>아이디</td>
                             <td>성별</td>
                             <td>이메일</td>
                             <td>휴대폰</td>
                             <td>주소</td>
                             <td>가입일</td>
                           </tr>
                           <tr style="text-align: center;">
                             <td align="center" class="td_column_check_manager">
                               <input class="mx-4 check_checkbox" type="checkbox">
                             </td>
                             <td>이름</td>
                             <td>아이디</td>
                             <td>성별</td>
                             <td>이메일</td>
                             <td>휴대폰</td>
                             <td>주소</td>
                             <td>가입일</td>
                           </tr>
                           <tr style="text-align: center;">
                             <td align="center" class="td_column_check_manager">
                               <input class="mx-4 check_checkbox" type="checkbox">
                             </td>
                             <td>이름</td>
                             <td>아이디</td>
                             <td>성별</td>
                             <td>이메일</td>
                             <td>휴대폰</td>
                             <td>주소</td>
                             <td>가입일</td>
                           </tr>
                         </tbody>
                       </table>
                     </div>
                     <div>
                       <hr class="m-1">
                       <div style="padding-left: 10px; padding-top: 10px;">
                         <button type="button" class="btn btn-outline-dark px-2 py-1">강퇴</button>
                       </div>
                     </div>
                   </div>
                   <!-- form end --> 
                  
                 </div>          
               </div>
     
               
               <!--페이징 섹션 시작-->              
               
	        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
	          <div id="userPaging" style="width: auto; margin-top: 40px;">
	            <ul class="pagination pagination-lg">
	              <li class="page-item disabled">
	                <a class="page-link" href="#">&laquo;</a>
	              </li>
	              <li class="page-item active">
	                <a class="page-link" href="#">1</a>
	              </li>
	              <li class="page-item">
	                <a class="page-link" href="#">2</a>
	              </li>
	              <li class="page-item">
	                <a class="page-link" href="#">3</a>
	              </li>
	              <li class="page-item">
	                <a class="page-link" href="#">4</a>
	              </li>
	              <li class="page-item">
	                <a class="page-link" href="#">5</a>
	              </li>
	              <li class="page-item">
	                <a class="page-link" href="#">&raquo;</a>
	              </li>
	            </ul>  
	          </div>
	        </div>
	        
	        <!--페이징 섹션 끝-->
             
             </div>
           </div>
         </div>
       </div>
       
       </div> <!-- class="container px-4 px-lg-5 mt-5"  -->
     </div>
   </section>

    <!-- Footer-->
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
      <div><img class="pwmlogo" src="../assets/images/pwmlogo.png"></div>
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
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="../js/letspl.js"></script>
  <script src="../js/adminpage.js"></script>
  <script type="text/javascript">
    $('#logo').click(function () {
        location.href = '/prome?id=' + $('#memId').val();
    });
    
    $('#logoutBtn').click(function () {
        $('#memId').val('');
        location.replace('/prome/');
    });
  
  	function projectPaging(projectPg){ 
		location.href="/prome/project/adminpage?projectPg=" +projectPg;
	}
    // modal

  </script>
</body>

</html>
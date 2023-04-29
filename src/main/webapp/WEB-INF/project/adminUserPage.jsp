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
	#userPaging li:hover{
	  cursor: pointer;
	}
  </style>
</head>

<body>
  <input type="hidden" id="memId" value="${param.id}">
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
				<div class="dropdown-item">${user_id}님</div>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" id="userinfoBtn">관리자 아이디 입니다.</a>
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
            <a class="nav-link" id="manageProject" data-bs-toggle="tab" href="#profile" aria-selected="false" role="tab" tabindex="-1" style="font-size: 1.5rem;">프로젝트 관리</a>
          </li>      
          <li class="nav-item" role="presentation">
            <a class="nav-link active" data-bs-toggle="tab" href="#home" aria-selected="true" role="tab" style="font-size: 1.5rem;">회원 관리</a>
          </li>
        </ul>
       
        <div id="myTabContent" class="tab-content"> <!--탭 메뉴 nav End-->
        
          <div class="tab-pane fade" id="profile" role="tabpanel">
          <!-- <div class="tab-pane fade active show" id="home" role="tabpanel"> --> <!--프로젝트 관리 탭 Content-->

            <!--모집분야 필터링-->
            <div class="row mb-3 mt-5">
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
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked="" />
                  <label class="form-check-label" for="flexCheckChecked"> 모집중</label>
                </div>
              </div>
            </div>

        <!--카드 섹션 시작-->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-between mb-4">
        
          <!--카드-1-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">



                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제
                  </button>
                </div>



                
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-3-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-4-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
        
          <!--카드-5-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-6-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
        
          <!--카드-7-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-8-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
        
          <!--카드-9-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-10-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
        
          <!--카드-11-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
        
        
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
        
        
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        
          <!--카드-12-->
          <div class="col mb-4">
            <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <button type="button" class="btn btn-outline-danger">삭제</button>
                </div>
                <div class="projectThumb">
                  <img loading="lazy" src="../assets/images/project_thumb_13.png" alt="내 글이 상장되는 ‘비법거래소'입니다"
                    style="vertical-align: middle" />
                </div>
              </div>
              <div class="projectBottomInfo">
                <div class="txtWrap projectWrap">
                  <h3 class="category">소셜네트워크</h3>
                  <h2 class="tit">[서울] 내 글이 상장되는 ‘비법거래소'입니다</h2>
                  <div class="iconWrap2">
                    <img loading="lazy" src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg"
                      alt="Figma" title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg" alt="Flutter"
                      title="Flutter" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/react/react-original.svg" alt="React"
                      title="React" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/amazonwebservices/amazonwebservices-original.svg"
                      alt="AWS" title="AWS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/nodejs/nodejs-original.svg" alt="NodeJS"
                      title="NodeJS" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/spring/spring-original.svg" alt="Spring"
                      title="Spring" />
                  </div>
                </div>
              </div>
              <div class="projectInfo2">
                <div class="middleWrap">
                  <div class="left">
        
                  </div>
                  <div class="right">
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                </div>
                <div class="bottomWrap">
                  <div class="gatherTxt">
                    <div>
                      <span>모집완료</span><span>2/8</span>
                      <div class="ic-arrow">
                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
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
        <div id="projectPaging" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <div style="width: auto">
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
        </div>


          <!--회원 관리 탭 Content-->
          <div class="tab-pane fade active show" id="home" role="tabpanel"> <!--프로젝트 관리 탭 Content-->
          <!-- <div class="tab-pane fade" id="profile" role="tabpanel"> -->
            <div class="container px-4 px-lg-5 mt-5">
              <div class="row mb-3">
                <div class="col pb-2" style="display: flex">
                  <span class="h2" style="font-weight: bold">회원관리</span>
                </div>
                <div class="section height-m600">
                  <div class="m-4" style="height: auto;">
                    <!-- 동적 처리로 들어와야 할 거에요 ! 프로젝트 생성을 안 했을 경우 없습니다 띄워야 하니... -->
                    <!-- form start -->
                    <div style="height: auto; padding:0px 0px 16px 0px;">
                      <table style="border:1 solid #cacaca" width="100%">
                        <tbody>
                          <tr style="text-align: center;" height="80px">
                            <td align="center" class="td_column_check_manager">
                              <input class="mx-4 check_checkbox" type="checkbox" id="allcheck">
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
                <input type="hidden" id="userPg" value="${userPg}">
                
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

  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="../js/letspl.js"></script>
  <script src="../js/logout.js"></script>
  <script src="../js/adminUserPage.js"></script>
  <script type="text/javascript">
    $('#logo').click(function () {
        location.href = '/prome/project/adminpage';
    });
  
  	function userPaging(userPg){ 
		location.href="/prome/project/adminUserPage?userPg=" +userPg;
	}
    // modal

  </script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Project With Me - My Page</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
  <!-- Bootstrap icons-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="../css/letspl.css" rel="stylesheet" />
  <link href="../css/styles.css" rel="stylesheet" />
  <link href="../css/custom.css" rel="stylesheet" />
  <link href="../css/slick.css" rel="stylesheet" />
  <link href="../css/slick-theme.css" rel="stylesheet" />
  <link rel="stylesheet" href="../css/modal_04_unsubscribe.css">
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
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03"
          aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor03">
          <img src="../assets/logo.png" style="cursor: pointer" />

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
            <button class="btn my-2 my-sm-0" type="button" style="padding-right: 0">
              <img src="../assets/btn-logout.png" />
            </button>

            <button class="btn my-2 my-sm-0 nav-link dropdown-toggle" aria-haspopup="true" aria-expanded="false"
              data-bs-toggle="dropdown" style="margin-right: 0.5rem">
              <img src="../assets/account-circle.png" />
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

    <!-- Section-->
    <section class="container">
      <div class="container px-4 px-lg-5 mt-2">
        <!-- 마이페이지 -->
        <div class="row mb-5 mb-lg-5 mb-xl-5">
          <div class="col" style="display: flex; justify-content: center">
            <span class="h1" style="font-weight: bold">마이페이지</span>
          </div>
        </div>

        <!--* Title - 관심 목록 *-->
        <div class="row" style="margin-top: 5rem; margin-bottom: 1.2rem">
          <div class="col" style="display: flex">
            <span class="h4" style="font-weight: bolder"> &nbsp;&nbsp;* 관심 목록 *</span>
          </div>
        </div>

        <!-- 1. 관심목록 시작-->
        <div class="slider-favorites">
          <!--카드-1-->
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <!--카드-6 끝-->
        </div>

        <!--* Title - 지원한 프로젝트 *-->
        <div class="row" style="margin-top: 5rem; margin-bottom: 1.2rem">
          <div class="col" style="display: flex">
            <span class="h4" style="font-weight: bolder"> &nbsp;&nbsp; * 지원한 프로젝트 *</span>
          </div>
        </div>

        <!-- 2. 지원한 프로젝트 시작-->
        <div class="slider-apply-project">
          <!--카드-1-->
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <!--카드-6 End-->
        </div>
        <!--div class="slider-apply-project" End-->

        <!--* Title - 내가 생성한 Team*-->
        <div class="row" style="margin-top: 5rem; margin-bottom: 1.2rem">
          <div class="col" style="display: flex">
            <span class="h4" style="font-weight: bolder"> &nbsp;&nbsp; * 내가 생성한 Team *</span>
          </div>
        </div>

        <!-- 3. 내가 생성한 Team-->
        <div class="slider-my-team">
          <!--카드-1-->
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <div>
            <div class="projectGridWrap" style="width: 260px; padding-left: 0; padding-right: 0">
              <div class="projectTopInfo">
                <div class="top" style="flex-direction: row-reverse">
                  <div class="favorite"></div>
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
                    <img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/figma/figma-original.svg" alt="Figma"
                      title="Figma" /><img loading="lazy"
                      src="https://letspl.s3.ap-northeast-2.amazonaws.com/icons/flutter/flutter-original.svg"
                      alt="Flutter" title="Flutter" /><img loading="lazy"
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
                    <div class="heartCount">
                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                    </div>
                  </div>
                  <div class="right">
                    <p><span> 509</span><span> (↑26)</span></p>
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
          <!--카드-6 End-->
        </div>
        <!--div class="slider-apply-project" End-->

        <!-- 회원 탈퇴 -->
        <div class="row" style="margin-top: 7rem">
          <div class="col" style="display: flex; justify-content: center">
            <span class="h4" style="font-weight: bold">* 회원 탈퇴 *</span>
          </div>
          <div class="row" style="margin-top: 1rem">
            <div class="col" style="display: flex; justify-content: center">
              &nbsp;&nbsp;&nbsp;&nbsp;
              <button type="button" id="deleteBtn" class="btn btn-outline-secondary">회원 탈퇴</button>
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
  
  <!-- 회원탈퇴 modal  -->
  <div class="modalWrapClose">
        <div class="loginModal" style="padding-bottom: 30px;">
            <button class="closeBtn">
                <img loading="lazy" src="../assets/icon/ic-close.svg" alt="close">
            </button>
            <div><img class="pmelogo" src="../assets/icon/pmelogo.png"></div>
            <div class="div_center_tit">회원탈퇴를 원하시면 비밀번호를 입력하세요.</div>
            *Password
            <div class="div_center"><input class="div_password" type="password" required="required"></div>

            <button type="button" class="btn btn-outline-secondary radious">회원 탈퇴</button>
            <button type="button" class="btn btn-outline-secondary radious" id="cancel">취소</button>

        </div>
    </div>

  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="../js/letspl.js"></script>
  <script src="../js/scripts.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script type="text/javascript" src="../js/slick.min.js"></script>

  <script type="text/javascript">
    $(function () {
      $('.slider-favorites').slick({
        arrows: true,
        prevArrow:
          "<input type='image' class='slick-prev' src= '../assets/arrow-back.png' style='width: 40px; height: 40px'></input>",
        nextArrow:
          "<input type='image' class='slick-next' src= '../assets/arrow-forward.png' style='width: 20px; height: 40px'></input>",
        dots: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
          // 반응형 웹 구현 옵션
          {
            breakpoint: 1200, //화면 사이즈 1200px
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
            },
          },
          {
            breakpoint: 960, //화면 사이즈 960px
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
            },
          },
        ],
      }); //.slider-favorites

      $('.slider-apply-project').slick({
        arrows: true,
        prevArrow:
          "<input type='image' class='slick-prev' src= '../assets/arrow-back.png' style='width: 40px; height: 40px'></input>",
        nextArrow:
          "<input type='image' class='slick-next' src= '../assets/arrow-forward.png' style='width: 20px; height: 40px'></input>",
        dots: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
          // 반응형 웹 구현 옵션
          {
            breakpoint: 1200, //화면 사이즈 1200px
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
            },
          },
          {
            breakpoint: 960, //화면 사이즈 960px
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
            },
          },
        ],
      }); //.slider-apply-project

      $('.slider-my-team').slick({
        arrows: true,
        prevArrow:
          "<input type='image' class='slick-prev' src= '../assets/arrow-back.png' style='width: 40px; height: 40px'></input>",
        nextArrow:
          "<input type='image' class='slick-next' src= '../assets/arrow-forward.png' style='width: 20px; height: 40px'></input>",
        dots: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
          // 반응형 웹 구현 옵션
          {
            breakpoint: 1200, //화면 사이즈 1200px
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
            },
          },
          {
            breakpoint: 960, //화면 사이즈 960px
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
            },
          },
        ],
      }); //.slider-my-team
    });
   	
    // modal
    $("#deleteBtn").click(function () {
        $(".loginModal").parent().attr("class", "modalWrapOpen");
    });
    $(".closeBtn").click(function () {
        $(".loginModal").parent().attr("class", "modalWrapClose");
    });
    $('#cancel').click(function () {
        $(".loginModal").parent().attr("class", "modalWrapClose");
    });
  </script>
</body>

</html>
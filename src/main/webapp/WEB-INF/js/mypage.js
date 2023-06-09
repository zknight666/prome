
//프로젝트 카드 갖고오는 함수 ->계속 쓰임.
//list_name = fav OR apply OR myteam
//status = 'WAITING' or 'P_ACCEPT' or 'P_DECLINE' or 'leader'
function getProjCard(item, index, list_name, status){

  $.ajax({
    type: "GET",
    url: "/prome/project/projectCard",
    data: {
      // "user_id": "yhg",
      "project_id": item
    },
    dataType: 'json',
    success: function (data) {

      //1. 오른쪽 위에 출력할 것
      //관심목록에 있는 프로젝트인 경우 -> class명을 "favorite-active"로 설정해서 풀하트 아이콘 표시
      let topRightHTML = '';
      if(list_name === "fav") {
        let isBookmark = data.isBookmark != null ? "favorite-active" : "favorite"
        topRightHTML = '<div class = "' + isBookmark + '" > </div>';

        //지원한 프로젝트 목록인 경우 -> 3가지 CASE로 나눠서 출력함
      }else if(list_name === "apply"){
        //1)아직 팀장이 승인/거절 안 한 플젝
        if(status === "WAITING"){
          topRightHTML = '<button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#modalApplyCancel" data-status="WAITING" data-project-id="' +item+ '">'
        }

        //2)승인된 플젝
        if(status === 'P_ACCEPT'){
          topRightHTML = '<button type="button" class="btn btn-primary" data-status="P_ACCEPT" data-project-id="' +item+ '">합류 승인!</button>'
        }

        //3)거절된 플젝
        if(status === 'P_DECLINE'){
          topRightHTML = '<button type="button" class="btn btn-danger" data-status="P_DECLINE" data-project-id="' +item+ '">합류 거절</button>'
        }

        //My Team의 팀장인 경우
      }else if(list_name === "myteam"){
        if(status === 'leader') {
          topRightHTML =
              '<span class="badge rounded-pill bg-warning" style="width: 50px; height: 30px; font-size: 1.1rem; font-weight: 450; '
              + 'display: flex; justify-content: center; align-items: center">리더</span>'
        }else if(status === 'member') {
          topRightHTML =
              '<span class="badge rounded-pill bg-primary" style="width: 50px; height: 30px; font-size: 1.1rem; font-weight: 450; '
              + 'display: flex; justify-content: center; align-items: center">멤버</span>'
        }
      }

      //2. 프로젝트에 적용된 기술들을 icon으로 표시
      let proj_tech_arr = []
      data.project_tech_arr.forEach((item) => {
        let tech_icon = "../assets/tech-icon/" + item.toLowerCase()+ ".svg";
        proj_tech_arr.push(
            '<img loading="lazy" src=' + tech_icon + ' alt=' + item
            + ' title=' + item + ' />');
      });

      let src = '';
      console.log(data.projectDTO.field)
      switch (data.projectDTO.field) {
        case '이커머스':
          src = '../assets/images/project-thumb-ecommerce.png';
          break;
        case '교육':
          src = '../assets/images/project-thumb-edu.png'
          break;
        case '뷰티/패션':
          src = '../assets/images/project-thumb-fashion.png'
          break;
        case '금융':
          src = '../assets/images/project-thumb-finance.png'
          break;
        case '게임':
          src = '../assets/images/project-thumb-game.png'
          break;
        case '의료/병원':
          src = '../assets/images/project-thumb-medical.png'
          break;
        case '부동산':
          src = '../assets/images/project-thumb-property.png'
          break;
        case '공유서비스':
          src = '../assets/images/project-thumb-sharing.png';
          break;
        case '소셜 네트워크':
          src = '../assets/images/project-thumb-sns.png'
          break;
        case '여행':
          src = '../assets/images/project-thumb-travel.png'
          break;
        default:
          src = '../assets/images/project-thumb-default.png'
      }

      const mapper = {
        "UI_UX_PLAN": "UI/UX 기획",
        "PLAN_ETC": '기획 기타',
        "GRAPHIC_DESIGN": '그래픽 디자인',
        "UI_UX_DESIGN": 'UI/UX 디자인',
        "DESIGN_ETC": '디자인 기타',
        "IOS": 'ios',
        "ANDROID": '안드로이드',
        "WEB_FE": '웹 프론트엔드',
        "WEB_PUBLISHER": '웹 퍼블리셔',
        "CROSS_FLATFORM": '크로스 플랫폼',
        "WEB_SERVER": '웹 서버',
        "BLOCK_CHAIN": '블록체인',
        "AI": '인공지능',
        "BIG_DATA": '빅데이터',
        "GAME_PLAN": '게임 기획',
        "PM": '프로젝트 매니저'
      }

      //3. 이 프로젝트를 관심목록으로 추가한 유저수 -> html에 data.heartCount 따로 적음.
      //4. 프로젝트 카테고리(분야)에 맞는 썸네일 출력. -> html에 직접 입력함
      //5. 이 프로젝트의 분야, 제목  -> html에 직접 입력함
      //6. 프로젝트 모집 현황     -> html에 직접 입력함

      //7. 프로젝트 모집 분야별 현황(hover시 나옴)
      let rec_field_html = []
      let rec_field = data.rec_field_map;
      for (let key in  rec_field) {
        rec_field_html.push(
            '<h3> <li><span>' + mapper[key] + '</span><span>'
            + rec_field[key]
            + '명</span></li></h3>');
      }


      $('.slider-' +list_name+'' ).slick('slickAdd',
          '<div class="card-'+list_name+'-' +index+ '" data-project-id="' + item +'">\n'
          + '            <div class="projectGridWrap" style="padding-left: 0; padding-right: 0">\n'
          + '              <div class="projectTopInfo">\n'
          + '                <div class="top" style="flex-direction: row-reverse">\n'

          +                     topRightHTML
          + '\n'
          + '                </div>\n'
          + '                <div class="projectThumb">\n'
          + '                  <img loading="lazy" src="' + src +'" alt="' + data.projectDTO.title + '"\n'
          + '                       style="vertical-align: middle" />\n'
          + '                </div>\n'
          + '              </div>\n'
          + '              <div class="projectBottomInfo">\n'
          + '                <div class="txtWrap projectWrap">\n'
          + '                  <h3 class="category">' + data.projectDTO.field + '</h3>\n'
          + '                  <h2 class="tit">' +data.projectDTO.title+'</h2>\n'
          + '                  <div class="iconWrap2">\n'    + proj_tech_arr.join('') + '</div>\n'
          + '                </div>\n'
          + '              </div>\n'
          + '              <div class="projectInfo2">\n'
          + '                <div class="middleWrap">\n'
          + '                  <div class="left">\n'
          + '\n'
          + '                  </div>\n'
          + '                  <div class="right">\n'
          + '                    <div class="heartCount">\n'
          + '                      <img loading="lazy" src="../assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>' +data.heartCount + '</span>\n'
          + '                    </div>\n'
          + '                  </div>\n'
          + '                </div>\n'
          + '\n'
          + '                <div class="bottomWrap">\n'
          + '                  <div class="gatherTxt">\n'
          + '                 <div>\n'
          + '                      <span>모집완료</span>\n'
          + '                      <span>' + data.projectDTO.member_joined + '/' + data.projectDTO.member_need+  '</span>\n'
          + '                      <div class="ic-arrow">\n'
          + '                        <img loading="lazy" src="../assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />\n'
          + '                      </div></div>\n'
          + '                    <div class="gatherModal">\n'
          + '                      <ul style="margin-bottom: 0.3rem">\n'
          + '                        <!--동적으로 모집 분야별 현황 들어옴-->\n' +rec_field_html.join('')
          + '                      </ul>\n'
          + '                    </div>\n'
          + '                  </div>\n'
          + '                </div>\n'
          + '              </div>\n'
          + '            </div>\n'
          + '          </div>');


    },
    error: function (err) {
      console.log(err);
    }
  }); //ajax GET projectCard End
} //getProjCard() End






//화면 로드 시 실행됨.
$(function () {

  //1. 관심목록 불러오기 -> project_id 리스트 가져옴.
  $.ajax({
    type: "GET",
    url: "/prome/project/bookmark",
    // data:{"user_id": "yhg"},
    dataType: 'json',
    success: function (data) {
      // console.log(data) -> Array<2>, data[0], data.length, data = ["1", "35"]
      // data의 item은 플젝아이디, index는 0 부터 시작

      data.forEach((item, index)=>{
        getProjCard(item, index, "fav", '')
      });

    },
    error: function (err) {
      console.log(err);
    }
  }); //1. Ajax End



  //2. 지원한 프로젝트 목록 불러오기 -> PROJECT_ID와 STATUS가 key로 있는 Map 형식이 item으로 있는 List 가져옴.
  $.ajax({
    type: "GET",
    url: "/prome/project/supportedProjects",
    // data:{"user_id": "yhg"},
    dataType: 'json',
    success: function (data) {
      // data -> [{"STATUS":"WAITING","PROJECT_ID":35},{"STATUS":"P_ACCEPT","PROJECT_ID":37},{"STATUS":"P_DECLINE","PROJECT_ID":42}]

      data.forEach((item, index)=>{
        //카드 출력
        getProjCard(item.PROJECT_ID, index, "apply", item.STATUS)
      });

    },
    error: function (err) {
      console.log(err);
    }
  }); //2. Ajax End


  //3. My Team 목록 불러오기 -> leader와 member가 key로 있는 Map 가져옴.
  $.ajax({
    type: "GET",
    url: "/prome/project/myTeams",
    // data:{"user_id": "yhg"},
    dataType: 'json',
    success: function (data) {
      // data -> {"leader":["2"],"member":["36","35","1"]}

      //해당 User가 리더로 있는 팀 출력함
      data.leader.forEach((item, index)=>{ //2
        getProjCard(item, "leader"+index, "myteam", "leader")
      });
      //해당 User가 멤버로 있는 팀 출력함
      data.member.forEach((item, index)=>{ //36, 35, 1
        getProjCard(item, "member"+index, "myteam", "member")
      });

    },
    error: function (err) {
      console.log(err);
    }
  }); //3. Ajax End


}); //$(function(){}); End


//slick slider 3개
$('.slider-fav').slick({
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

$('.slider-apply').slick({
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

$('.slider-myteam').slick({
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








/**projectCard쪽 Click Listener
 동적으로 생기는 태그에는 .click() 대신 .on()으로 이벤트를 걸어줘야 한다. **/

//card 클릭했을 때 프로젝트 상세페이지로 이동함.
$(document).on('click', '.slick-slide', function (){
  console.log("카드 클릭됨");
  console.log("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

  let project_id = $(this).data("project-id")
  location.href = '/prome/project/project?project_id=' +project_id;

});
















//관심목록에 없는 프로젝트를 클릭한 경우 풀하트로 바꾸고 DB의 bookmark Table에 레코드를 추가함.
$(document).on('click', '.top .favorite', function (event){
  event.stopPropagation();
  console.log("빈하트 클릭됨");
  let project_id = $(this).closest('div[class^="card-"]').data("project-id")


  $.ajax({ //북마크 추가
    type: "POST",
    url: "/prome/project/addBookmark",
    data:{
      "project_id": project_id },
    success: function ( ) {
      alert("북마크 추가했습니다.")
      $('div[class^="card-fav"][data-project-id="'+project_id+'"]').find('.top .favorite').attr("class", "favorite-active");
    },
    error: function (err) {
      console.log(err);
    }
  })

});

//관심목록에 있는 프로젝트인 경우 빈 하트로 바꾸고 DB의 bookmark Table에서 레코드를 제거함.
$(document).on('click', '.top .favorite-active', function (event){
  event.stopPropagation();
  console.log("풀하트 클릭됨");
  let project_id = $(this).closest('div[class^="card-"]').data("project-id")

  $.ajax({ //북마크 삭제
    type: "POST",
    url: "/prome/project/deleteBookmark",
    data:{
      "project_id": project_id},
    success: function ( ) {
      alert("북마크 삭제했습니다.")
      $('div[class^="card-fav"][data-project-id="'+project_id+'"]').find('.top .favorite-active').attr("class", "favorite");
    },
    error: function (err) {
      console.log(err);
    }
  })

});


//지원목록 .top 의 버튼 눌렀을 때
$(document).on('click', '.slider-apply .top button', function (event){
  event.stopPropagation();
  let project_id = $(this).data("project-id")
  let status = $(this).data("status")
  let project_title = $(this).closest('.projectGridWrap').find('h2.tit').text();

  //1)아직 팀장이 승인/거절 안 한 플젝
  if(status === "WAITING"){
    $('#modalApplyCancel .modal-title').text(project_title);
    $('#modalApplyCancel .btn-primary').attr("data-project-id", project_id);


    //2)승인된 플젝
  }else if(status === "P_ACCEPT"){
    alert("해당 프로젝트에 대한 지원이 승인되었습니다!")

    $.ajax({ //지원서 STATUS 업데이트함     P_ACCEPT-> ACCEPT
      type: "POST",
      url: "/prome/project/updateApplicationStatus",
      data: {
        "project_id": project_id,
        "status": status
      },
      success: function () {
        let slick_index = $(this).closest('.slick-slide').data('slick-index');
        $('.slider-apply').slick('slickRemove', slick_index);
        location.reload()
      },
      error: function (err) {
        console.log(err);
      }

    })


    //3)거절된 플젝
  }else if(status === "P_DECLINE"){
    alert("해당 프로젝트에 대한 지원이 거절되었습니다!")

    $.ajax({ //지원서 STATUS 업데이트함   P_DECLINE-> DECLINE
      type: "POST",
      url: "/prome/project/updateApplicationStatus", //=> 컨트롤러에 아직 추가 안함
      data: {
        "project_id": project_id,
        "status": status
      },
      success: function () {
        let slick_index = $(this).closest('.slick-slide').data('slick-index');
        $('.slider-apply').slick('slickRemove', slick_index )
        location.reload()
      },
      error: function (err) {
        console.log(err);
      }

    })



  }

});


//지원 취소 버튼 눌렀을 때
$(document).on('click', '#modalApplyCancel .btn-primary', function (){
  console.log("이거");

  let project_id = $(this).data("project-id")

  $.ajax({ //지원서 삭제
    type: "POST",
    url: "/prome/project/deleteApplication",
    data:{
      // "user_id": "yhg",
      "project_id": project_id},
    success: function ( ) {
      alert("해당 프로젝트에 대한 지원을 취소했습니다.")
      location.reload()
    },
    error: function (err) {
      console.log(err);
    }
  })
});


//[합류 승인!] OR [합류 거절] 버튼 눌렀을 때
// $(document).on('click', 'div[class^="card-apply"] .top .btn', function (){
//   console.log("합류~~ 버튼 누름");
//
//   let project_id = $(this).data("project-id")
//   let status = $(this).data("status")
//
//   if(status === "P_ACCEPT"){
//   if(!confirm("해당 프로젝트에 합류가 승인되었습니다.")){
//
//   }}else if(status === "P_DECLINE"){
//   confirm("해당 프로젝트에 합류가 거절되었습니다.")
//
//   }
//
//     $.ajax({ //지원서 STATUS 업데이트 -> ACCEPT/DECLINE
//       type: "POST",
//       url: "/prome/project/updateApplicationStatus",
//       data: {
//         // "user_id": "yhg",
//         "project_id": project_id,
//         "status": status
//       },
//       success: function () {
//         alert("해당 프로젝트에 대한 지원을 취소했습니다.")
//         location.reload()
//       },
//       error: function (err) {
//         console.log(err);
//       }
//
//     })
//
// });







$('#deleteUser').click(function(){
  if($('#prome_pwd').val() == ''){
    alert('비밀번호를 입력해주세요.');
    return;
  }
  $.ajax({
    type: "post",
    url: "/prome/users/deleteUser",
    data: {
      id : $('#prome_id').val(),
      pwd: $('#prome_pwd').val()
    },
    success: function (data) {
      if(data=='비밀번호가 틀렸습니다.'){
        alert(data);
      }else{
        alert(data);
        location.replace('/prome');
      }
    },
    error: function (err) {
      console.log(err);
    }
  });
});








// modal -회원탈퇴
$("#deleteBtn").click(function () {
  $(".loginModal").parent().attr("class", "modalWrapOpen");
});
$(".closeBtn").click(function () {
  $(".loginModal").parent().attr("class", "modalWrapClose");
});
$('#cancel').click(function () {
  $(".loginModal").parent().attr("class", "modalWrapClose");
});
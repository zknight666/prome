$(function () {
  $.ajax({
    type: "GET",
    url: "/prome/project/projectCard",
    data:{"user_id": "yhg",
      "project_id": $('.fav-1').data("project-id") },
    dataType: 'json',
    success: function (data) {

      if(data.isBookmark != null) { //관심목록에 있는 프로젝트인 경우 -> 풀하트 아이콘 표시
        $('.fav-1 .top .favorite').addClass("active");

      }

      data.project_tech_arr.forEach((item) => { //프로젝트에 적용된 기술들을 icon으로 표시
        let tech_icon = "../assets/tech-icon/" + item.toLowerCase() + ".svg";
        $('.fav-1 .iconWrap2').append('<img loading="lazy" src='+tech_icon+' alt='+item+' title='+item+' />');
      });

      //이 프로젝트를 관심목록으로 추가한 유저수
      $('.fav-1 .right .heartCount span').text(data.heartCount);


      let src = '';
      let field_text = '';
      switch (data.projectDTO.field) {
        case 'ecommerce':
          src = '../assets/images/project-thumb-ecommerce.png';
          field_text = '이커머스';
          break;
        case 'edu':
          src = '../assets/images/project-thumb-edu.png'
          field_text = '교육';
          break;
        case 'fashion':
          src = '../assets/images/project-thumb-fashion.png'
          field_text = '뷰티/패션';
          break;
        case 'finance':
          src = '../assets/images/project-thumb-finance.png'
          field_text = '금융';
          break;
        case 'game':
          src = '../assets/images/project-thumb-game.png'
          field_text = '게임';
          break;
        case 'medical':
          src = '../assets/images/project-thumb-medical.png'
          field_text = '의료/병원';
          break;
        case 'property':
          src = '../assets/images/project-thumb-property.png'
          field_text = '부동산';
          break;
        case 'sharing':
          src = '../assets/images/project-thumb-sharing.png'
          field_text = '공유서비스';
          break;
        case 'sns':
          src = '../assets/images/project-thumb-sns.png'
          field_text = '소셜네트워크';
          break;
        case 'travel':
          src = '../assets/images/project-thumb-travel.png'
          field_text = '여행';
          break;
        default:
          src = '../assets/images/project-thumb-default.png'
      }


      const mapper = {"UI_UX_PLAN": "UI/UX 기획",
      "PLAN_ETC": '기획 기타',
        "GRAPHIC_DESIGN": '그래픽 디자인',
        "UI_UX_DESIGN": 'UI/UX 디자인',
        "DESIGN_ETC": '디자인 기타' ,
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
        "PM": '프로젝트 매니저'}


      //프로젝트 카테고리(분야)에 맞는 썸네일 출력.
      $('.fav-1 .projectThumb img').attr("src", src);
      $('.fav-1 .projectThumb img').attr("alt", data.projectDTO.title);

      //이 프로젝트의 분야
      $('.fav-1 .projectBottomInfo h3.category').text(field_text);
      //이 프로젝트의 제목
      $('.fav-1 .projectBottomInfo h2.tit').text(data.projectDTO.title);


      //프로젝트 모집 현황
      $('.fav-1 .bottomWrap .gatherTxt .gatherTxt2 :nth-child(2)').text(data.projectDTO.member_joined +'/'+ data.projectDTO.member_need);

      //프로젝트 모집 분야별 현황(hover시 나옴)
      let rec_field = data.rec_field_map;
      for(let key in rec_field) {
        $('.fav-1 .bottomWrap .gatherTxt .gatherModal ul').append(
            '<h3> <li><span>' + mapper[key] + '</span><span>' + rec_field[key]
            + '명</span></li></h3>');
      }




    },
    error: function (err) {
      console.log(err);
    }
  });



  //projectCard heart click Listener
//동적으로 생기는 태그에는 .click() 대신 .on()으로 이벤트를 걸어줘야 한다.

//관심목록에 없는 프로젝트를 클릭한 경우 풀하트로 바꾸고 DB의 bookmark Table에 레코드를 추가함.
//   $(document).on('click', '.top .top- .favorite', function (){
//
//     if$('.top .top- .favorite').is(':checked'); //체크가 되어 있으면=관심목록에 있는 프로젝트면
//
//     $.ajax({ //북마크 추가
//       type: "POST",
//       url: "/prome/project/addBookmark",
//       data:{"user_id": "yhg",
//         "project_id": $('.fav-1').data("project-id") },
//       success: function (data) {
//         console.log("북마크 추가했습니다.")
//         $(this).remove();
//         $('.fav-1 .projectTopInfo .top').append('<div class="top-active"><div className="favorite active"></div></div>');
//       },
//       error: function (err) {
//         console.log(err);
//       }
//     })
//
//   });

//관심목록에 있는 프로젝트인 경우 빈 하트로 바꾸고 DB의 bookmark Table에서 레코드를 제거함.
//   $(document).on('click', '.top .favorite.active', function (){
//
//     $.ajax({ //북마크 삭제
//       type: "POST",
//       url: "/prome/project/deleteBookmark",
//       data:{"user_id": "yhg",
//         "project_id": $('.fav-1').data("project-id") },
//       success: function (data) {
//         console.log("북마크 삭제했습니다.")
//
//       },
//       error: function (err) {
//         console.log(err);
//       }
//     })
//
//
//   });



}); //$(function(){}); End


//button hasclass()로 하기 시도
// $(document).on('click', '.fav-1 .top .favorite', function (){
//
//   if($('.fav-1 .top .top- .favorite').hasClass('active')) { //체크가 되어 있으면=관심목록에 있는 프로젝트면
//
//     $.ajax({ //북마크 삭제
//       type: "POST",
//       url: "/prome/project/deleteBookmark",
//       data:{"user_id": "yhg",
//         "project_id": $('.fav-1').data("project-id") },
//       success: function (data) {
//         console.log("북마크 삭제했습니다.")
//         $(this).toggleClass('active');
//
//       },
//       error: function (err) {
//         console.log(err);
//       }
//     })
//     return false;
//
//
//
//   }else{
//     $.ajax({ //북마크 추가
//       type: "POST",
//       url: "/prome/project/addBookmark",
//       data:{"user_id": "yhg",
//         "project_id": $('.fav-1').data("project-id") },
//       success: function (data) {
//         console.log("북마크 추가했습니다.")
//         $(this).toggleClass('active');
//       },
//       error: function (err) {
//         console.log(err);
//       }
//     })
//
//     return false;
//
//   }
//
//
//
// });






























//slick slider 3개
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
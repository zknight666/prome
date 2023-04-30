$(function () {
  let project_id = new URLSearchParams(location.search).get("project_id")

  //프로젝트 상세 페이지에 필요한 Data 받아옴.
  $.ajax({
    url: '/prome/project/projectDetail',
    type: 'GET',
    data: {'project_id': project_id.toString()},
    dataType: 'json',
    success: function (data) {
      console.log(JSON.stringify(data));

      //1. 프로젝트 기본 정보 표시
      $('div#team-leader').text(data.projectDTO.team_leader);
      $('div#title').text(data.projectDTO.title);
      $('div#field').text(data.projectDTO.field);
      $('div#content').html(data.projectDTO.content);
      $('div#start-date').text(new Date(data.projectDTO.start_date).toLocaleDateString());
      $('div#due-date').text(new Date(data.projectDTO.due_date).toLocaleDateString());

      //2. 프로젝트에 적용된 기술들을 icon으로 표시
      let proj_tech_arr = []
      data.project_tech_stack.forEach((item) => {
        let tech_icon = "../assets/tech-icon/" + item.toLowerCase()+ ".svg";
        proj_tech_arr.push('<div class="techLan_icon"><img loading="lazy" src=' + tech_icon + ' alt=' + item+ ' title=' + item + ' /><br><span>' +item.toLowerCase()+ '</span></div>');

      });
      $('.techLan').html(proj_tech_arr.join('') );

      //3. 리더의 tech_stack을 icon으로 표시
      let leader_tech_arr = []
      data.leader_tech_stack.forEach((item) => {
        let tech_icon = "../assets/tech-icon/" + item.toLowerCase()+ ".svg";
        leader_tech_arr.push('<img loading="lazy" src=' + tech_icon + ' alt=' + item+ ' title=' + item + ' />');

      });
      $('div#leaderTech').html(leader_tech_arr.join('') );


      //4. 지원현황 표시
      // 모집분야별: 승인된 멤버/모집하는 인원
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


      let rec_arr = []
      let member_field_arr = data.member_field;

      Object.keys(data.rec_field_map).forEach((key) => {

        let member_count = member_field_arr.filter(element => key === element).length; //key(모집분야 이름) 과 멤버의 지원분야가 같은 수.

        let button_html = '';
        if (member_count === data.rec_field_map[key]){
          button_html = '" class="btn btn-sm col-2 btn-secondary apply"  disabled style="width: auto">마감</button></div>';
        }else{
          button_html = '" class="btn btn-sm col-2 btn-outline-secondary apply" style="width: auto">지원</button></div>';
        }

        rec_arr.push('<div class="recruitment_Status_content content_center">' +
            '<div>' +
            '<span>' +mapper[key]+ '</span>' +
            '</div>' +
            '<div style="color: #EA6560">' +
            '<span  class="mem">' +member_count+ '</span>' +
            '/' +
            '<span  class="rec">' + data.rec_field_map[key] + '</span>' +
            '</div>' +
            '<button type="button" data-rec-field="' +key +button_html)

      });
      $('div#recruitment').html(rec_arr.join(''));



      //5. 멤버 카드 추가(0~9개)
     // data.memberCardList
      let m_card_arr = data.memberCardList;
      let m_card_html = []

      m_card_arr.forEach((item) => {

        let tech_stack_arr = item.user_tech_stack.split(",")
        let tech_stack_html = []
        tech_stack_arr.forEach((item) => {
          let tech_icon = "../assets/tech-icon/" + item.toLowerCase()+ ".svg";
          tech_stack_html.push('<img loading="lazy" src="' + tech_icon + '" class="user_tech_icon" alt=' + item+ ' title=' + item + ' />');

        });


        m_card_html.push('      <div class="board_member">\n'
            + '        <div class="board_member2">\n'
            + '          <span class="board_member2_field">' +mapper[item.app_field]+ '</span>\n'
            + '        </div>\n'
            + '        <div class="board_member1">\n'
            + '          <div class="board_member1_img">\n'
            + '            <img class="img" src="../assets/account-circle.png">\n'
            + '          </div>\n'
            + '          <div>\n'
            + '            <div id="member" class="board_member1_id">' +item.userId+ '</div>\n'
            + '          </div>\n'
            + '        </div>\n'

            + '        <div class="board_member3">\n'
            + '          <div>\n'
            + '            <span class="board_member3_techLan">기술/언어</span>\n'
            + '          </div>\n'
            + '          <div id="memberTechstack" class="board_member3_icon">\n'
            +          tech_stack_html.join('')
            + '          </div>\n'
            + '        </div>\n'
            + '      </div>')

      });
      $('.board_memberArea').html(m_card_html.join(''));





    },
    error: function(xhr, status, error) {
      // 요청에 실패한 경우, 오류 메시지를 출력
      console.log('Error:', status, xhr.responseText);
    }

  }); //ajax projectDetail End


}); //$(function () {}) End




//----------------------------------------------------------------------------------------------------
//Click Listener 시작

//[지원]버튼 누른 경우
$(document).on("click", ".apply", function(){
  let projectName = $("#projectName").text();
  let field = $(this).prev().prev().text();

    let text = '[' + '<span style="color: #2f80ed">' +projectName +'</span>] \n'+'<span style="color: #2f80ed">' + field +'</span>'+ " 분야에 지원하시겠습니까?";
    $(".loginModal").parent().attr("class", "modalWrapOpen");
    $(".div_center_tit").html(text);

});

//[지원완료]버튼 누른 경우
$(".applyBtn").click(function () {








  $(".loginModal").parent().attr("class", "modalWrapClose");
  alert("지원 완료");
});

//[취소]버튼 누른 경우
$(".applyCancelBtn, .closeBtn").click(function () {
  $(".loginModal").parent().attr("class", "modalWrapClose");
});




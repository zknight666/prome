document.addEventListener("DOMContentLoaded", () => {
	var projectPg = $('#projectPg').val();
    getProjects(projectPg);
    
});




// 모집분야 필터링
$('select[name="recruitment_field"]').on('change', function() {
    getProjects(projectPg);
});


// 모집중(checkbox)
$('#flexCheckChecked').on('change', function() {
  getProjects(projectPg);
});


// 모임생성 버튼 
if($('#user_id').val()) {
	$('button[name="buildProjectBtn"]').css("display","inline-block");
} 
else {
	$('button[name="buildProjectBtn"]').css("display","none");
}


// 단축키
$(document).keydown(function(event) {
	// B 버튼
	if (event.which === 66 && !$(".loginModal_1").parent().hasClass("modalWrapOpen_1") && !$(".loginModal").parent().hasClass("modalWrapOpen")) {
	    location.href = '/prome/project/buildProject';
	}
	// L 버튼
	else if (event.which === 76 && !$(".loginModal_1").parent().hasClass("modalWrapOpen_1") && !$(".loginModal").parent().hasClass("modalWrapOpen")) {
	    $(".loginModal_1").parent().attr("class", "modalWrapOpen_1");
	}	
	// esc 버튼
	else if (event.which === 27) {
	        $(".loginModal_1").parent().attr("class", "modalWrapClose_1");
	        $(".loginModal").parent().attr("class", "modalWrapClose");
	}		
});


// 프로젝트 db 가져오기
function getProjects(projectPg) {
  $.ajax({
    type: "GET",
    url: "/prome/project/getMainProjects",
    data: 'projectPg=' + encodeURIComponent($('#projectPg').val()),
    dataType: "json",
    success: function (response) {
   		console.log(JSON.stringify(response));
    
      let projects = response.list;  
      
      projects = projects.filter(project => {
        
        if ($('#flexCheckChecked').is(':checked') && project.member_joined === project.member_need) {
          return false;
        }
        const recruitmentFields = JSON.parse(project.recruitmentFields);
        return recruitmentFields[$('select[name="recruitment_field"]').val()] !== null;
        
      });
      console.log("Projects:", projects);
      displayProjects(projects);
      $('#projectPaging').html(response.projectPaging.pagingHTML);
    },
    error: function (error) {
      console.log(error);
    }
  });
}


const techStackIcons = {
    'FIGMA': './assets/tech-icon/figma.svg',
    'PHOTOSHOP': './assets/tech-icon/photoshop.svg',
    'IOS': './assets/tech-icon/ios.svg',
    'ANDROID': './assets/tech-icon/android.svg',
    'REACT': './assets/tech-icon/react.svg',
    'VUE': './assets/tech-icon/vue.svg',
    'FLUTTER': './assets/tech-icon/flutter.svg',
    'HTML_CSS': './assets/tech-icon/html_css.svg',
    'JAVASCRIPT': './assets/tech-icon/javascript.svg',
    'SPRING': './assets/tech-icon/spring.svg',
    'JAVA': './assets/tech-icon/java.svg',
    'KOTLIN': './assets/tech-icon/kotlin.svg',
    'NODE_JS': './assets/tech-icon/node_js.svg',
    'MONGODB': './assets/tech-icon/mongodb.svg',
    'C_C#': './assets/tech-icon/c_c#.svg',
    'GIT': './assets/tech-icon/git.svg',
    'AWS': './assets/tech-icon/aws.svg',
    'DOCKER': './assets/tech-icon/docker.svg',
    'KUBERNETES': './assets/tech-icon/kubernetes.svg',
    'TENSORFLOW': './assets/tech-icon/tensorflow.svg',
    'UNITY': './assets/tech-icon/unity.svg',
    'PYTHON': './assets/tech-icon/python.svg',
    'MYSQL': './assets/tech-icon/mysql.svg',
    'TYPESCRIPT': './assets/tech-icon/typescript.svg',
};


const fieldsIcons = {
    '이커머스': './assets/images/project-thumb-ecommerce.png',
    '교육': './assets/images/project-thumb-edu.png',
    '뷰티/패션': './assets/images/project-thumb-fashion.png',
    '금융': './assets/images/project-thumb-finance.png',
    '게임': './assets/images/project-thumb-game.png',
    '의료/병원': './assets/images/project-thumb-medical.png',
    '부동산': './assets/images/project-thumb-property.png',
    '공유서비스': './assets/images/project-thumb-sharing.png',
    '소셜 네트워크': './assets/images/project-thumb-sns.png',
    '여행': './assets/images/project-thumb-travel.png',
}; 

const recruitmentfieldsname = {
    'UI_UX_PLAN': 'UI/UX기획',
    'GAME_PLAN': '게임기획',
    'PM': '프로젝트 매니저',
    'PLAN_ETC': '(기획)기타',
    'GRAPHIC_DESIGN': '그래픽디자인',
    'UI_UX_DESIGN': 'UI/UX디자인',
    'DESIGN_ETC': '(디자인)기타',
    'IOS': 'IOS',
    'ANDROID': '안드로이드',
    'WEB_FE': '웹프론트엔드',
    'WEB_PUBLISHER': '웹퍼블리셔',
    'CROSS_FLATFORM': '크로스플랫폼',
    'WEB_SERVER': '웹 서버',
    'AI': 'AI',
    'BIG_DATA': '빅데이터/DS',
    'BLOCK_CHAIN': '블록체인',
}; 


function displayProjects(projects) {
    $('#card_section').html('');


    projects.forEach(project => {

        const recruitmentFieldsList = Object.entries(JSON.parse(project.recruitmentFields))
            .filter(([, value]) => value !== null)
            .map(([key, value]) => {
                              const recruitmentFieldsname = recruitmentfieldsname[key];
                              return `<h3><li><span>${recruitmentFieldsname}</span><span>${value}</span></li></h3>`;
                              })
            .join('');

        const techStacksList = Object.entries(JSON.parse(project.techstacks))
            .filter(([, value]) => value === 'Y')
            .map(([key]) => {
                const iconPath = techStackIcons[key];
            return `<li><img loading="lazy" src="${iconPath}" alt="${key}" width="20" height="20"></li>`;
            })
            .join('');
            
        const fieldIconPath = fieldsIcons[project.field] || './assets/images/cat-space.gif';  
            
            

        const projectCard = `

                                          <!--카드-1-->
                         <div class="col mb-4">
                           <div class="projectGridWrap" style="min-width: 260px; padding-left: 0; padding-right: 0">
                             <div class="projectTopInfo">
                               <div class="top" style="flex-direction: row-reverse">
                                 <div class="favorite"></div>
                               </div>
                               <div class="projectThumb">
                                 <img loading="lazy" src="${fieldIconPath}" alt="내 글이 상장되는 ‘비법거래소'입니다"
                                   style="vertical-align: middle" />
                               </div>
                             </div>
                             <div class="projectBottomInfo">
                               <div class="txtWrap projectWrap">
                                 <h3 class="category"> ${project.field}</h3> 
                                 <h2 class="tit">${project.title}</h2>
                                 <div class="iconWrap2">
                              ${techStacksList}
                                 </div>
                               </div>
                             </div>
                             <div class="projectInfo2">
               
               
                               <div class="middleWrap">
                                 <div class="left">
                                   
                                 </div>
                                 <div class="right">
                                   <div class="heartCount">
                                     <img loading="lazy" src="assets/images/ic-favorite-empty-white.svg" alt="구독자 수" /><span>29</span>
                                   </div>
                                 </div>
                               </div>
               
               
                               <div class="bottomWrap">
                                 <div class="gatherTxt">
                                   <div>
                                     <span>${project.member_joined === project.member_need ? '모집 완료' : '모집 중'}</span><span>${project.member_joined}/${project.member_need}</span>
                                     <div class="ic-arrow">
                                       <img loading="lazy" src="assets/images/ic-arrow-up.svg" alt="프로젝트 모집현황" />
                                     </div>
                                   </div>
                                   
                                   <div class="gatherModal">
                                   
                                     <ul>
                                     ${recruitmentFieldsList}
                                     </ul>
                                   </div>
                                   
                                 </div>
                               </div>
                             </div>
                           </div>
                         </div>
                         <!--카드 End-->
            
                           
                         `;
        $('#card_section').append(projectCard);
    });
}   
    
$(document).on('click', 'col mb-4', function (){

  let project_id = $(this).data("project-id")
  location.href = '/prome/project/project?id=' +project_id;

});    
    
    
document.addEventListener("DOMContentLoaded", () => {
    getProjects();
});





$('select[name="recruitment_field"]').on('change', function() {
    getProjects();
    alert($('select[name="recruitment_field"]').val() +  "으로 필터링 되었습니다.");
});


$('#flexCheckChecked').on('change', function() {
  getProjects();
});




function getProjects() {
  fetch("/prome/project/getMainProjects")
    .then(response => response.json())
    .then(projects => {
    					const selectedRecruitmentField = $('select[name="recruitment_field"]').val();
    					const onlyRecruiting = $('#flexCheckChecked').is(':checked');
    					
         			   	projects = projects.filter(project => 
         			   						{
         			   							const recruitmentFields = JSON.parse(project.recruitmentFields);
         			   							if (onlyRecruiting && project.member_joined === project.member_need) {
										          return false;
										        }
              									return recruitmentFields[selectedRecruitmentField] !== null;
         			   						});
    					console.log("Projects:", projects); 
    					displayProjects(projects);
    					})
    .catch(error => console.error("Error fetching projects:", error));
}





const techStackIcons = {
    'FIGMA': './assets/icon/figma.png',
    'PHOTOSHOP': './assets/icon/photoshop.png',
    'IOS': './assets/icon/ios.png',
    'ANDROID': './assets/icon/android.png',
    'REACT': './assets/icon/react.png',
    'VUE': './assets/icon/vue.png',
    'FLUTTER': './assets/icon/flutter.png',
    'HTML_CSS': './assets/icon/html.png',
    'JAVASCRIPT': './assets/icon/js.png',
    'SPRING': './assets/icon/spring.png',
    'JAVA': './assets/icon/java.png',
    'KOTLIN': './assets/icon/kotlin.png',
    'NODE_JS': './assets/icon/nodejs.png',
    'MONGODB': './assets/icon/mongodb.png',
    'C_C#': './assets/icon/cc.png',
    'GIT': './assets/icon/git.png',
    'AWS': './assets/icon/aws.png',
    'DOCKER': './assets/icon/docker.png',
    'KUBERNETES': './assets/icon/kubernetes.png',
    'TENSORFLOW': './assets/icon/tensorflow.png',
    'UNITY': './assets/icon/unity.png',
    'PYTHON': './assets/icon/python.png',
    'MYSQL': './assets/icon/mysql.png',
    'TYPESCRIPT': './assets/icon/typescript.png',
};


const fieldsIcons = {
    'medical': './assets/images/cat-space.gif',
    '이커머스': './assets/images/project-thumb-ecommerce.png',
    '교육': './assets/images/project-thumb-edu.png',
    '뷰티/패션': './assets/images/project-thumb-fashion.png',
    '금융': './assets/images/project-thumb-finance.png',
    '게임': './assets/images/project-thumb-game.png',
    'FIGMA': './assets/images/project-thumb-medical.png',
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
            						const recruitmentFieldsName = recruitmentfieldsname[key];
            						return `<h3><li><span>${recruitmentFieldsName}</span><span>${value}</span></li></h3>`;
            						})
            .join('');

        const techStacksList = Object.entries(JSON.parse(project.techstacks))
            .filter(([, value]) => value === 'y')
            .map(([key]) => {
                const iconPath = techStackIcons[key];
				return `<li><img loading="lazy" src="${iconPath}" alt="${key}" width="20" height="20"></li>`;
				})
            .join('');
            
        const fieldIconPath = fieldsIcons[project.field] || './assets/icon/default.png';  
            
            

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
    
    
    
    

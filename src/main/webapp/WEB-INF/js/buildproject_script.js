$(document).ready(function() {
 
	 
	 /*************** 모집 인원 동적 처리***************/ 		
		// 모집인원이 1일 때 - 버튼 투명도 0.5 -> 처음 한번만 적용됨, 수정 필요.
		function updateMinusButtonOpacity() {
		        $(".recruit").each(function() {
		            var countNumber = $(this).find(".recruit_countNumber");
		            var count = parseInt(countNumber.val());
		            var minusButton = $(this).find(".imageBtnminus");
		            if (count <= 1) {
		                minusButton.css("opacity", "0.5");
		            } else {
		                minusButton.css("opacity", "1");
		            }
		        });
	    } 		
	
		// +버튼 클릭시
	    $(document).on("click", ".imageBtnplus", function() {
	        var countNumber = $(this).siblings(".recruit_countNumber");
	        var count = parseInt(countNumber.val());
	        count += 1;
	        countNumber.val(count);
	        updateMinusButtonOpacity();
	    });
	
		// -버튼 클릭시
	    $(document).on("click", ".imageBtnminus", function() {
	        var countNumber = $(this).siblings(".recruit_countNumber");
	        var count = parseInt(countNumber.val());
	        if (count > 1) {
	            count -= 1;
	            countNumber.val(count);
	        }
	        updateMinusButtonOpacity();
	        
	    });
	
		// 추가 버튼 클릭시
	    $(document).on("click", ".recruit_plus", function() {
	        var newRecruit = $(".recruit").first().clone();
	        newRecruit.find(".recruit_countNumber").val("1");
			newRecruit.find(".recruit_countNumber").attr("name", "recruit_count_" + $(".recruit").length);
	        newRecruit.appendTo("#recruitContainer");
	        updateMinusButtonOpacity();
	    });
	
		// 삭제 버튼 클릭시
	    $(document).on("click", ".recruit_minus", function() {
	        if ($(".recruit").length > 1) {
	            $(".recruit").last().remove();
	            updateMinusButtonOpacity();
	        }
	    });
	
		// 모집 분야 별 인원 수 name 초기 값
		$(".recruit_countNumber").attr("name", "recruit_count_0");
	 /*************** 모집 인원 동적 처리***************/   
	 
	 
	 

	 	/**프로젝트 설명 val() 안씀 처리**/  
	 	// 본문에서 focusout 시 본문의 내용을 hidden-input의 val()로 저장
//	 	$('.ProseMirror').focusout(function(){        
//	        var content = $('.ProseMirror').text().trim(); // contenteditable div의 텍스트를 가져옵니다.
//	        $('input[name="project_description"]').val(content); // 가져온 텍스트를 숨겨진 input에 저장합니다.
//	    });  
	    /**프로젝트 설명 val()처리**/ 



	    /**기술/언어 y/n 처리**/
		$('input[type="checkbox"]').on("change", function(){
		    if($(this).is(":checked")){
		        $(this).val("y");
		    } else {
		        $(this).val("n");
		    }
		});
	    /**기술/언어 y/n 처리**/
	    


 	/*************** submitbtn.click ***************/

		$('#submitBtn').click(function(event) {

	        event.preventDefault(); // 폼 기본 제출 동작을 제한
	      	


			  // 데이터 추출
			  var requestData = {
			    title: $('input[name="project_name"]').val(),
			    field: $('input[name="step2_radio"]:checked').val(),
			    content: $('.ProseMirror')[0].innerHTML,
			    start_date: $('input[name="start-date"]').val(),
			    due_date: $('input[name="end-date"]').val(),
			    recruitmentFields: $('select[name="recruitment_field"]').map(function() {
			      return $(this).val();
			    }).get(),
			    recruitCounts: $('.recruit_countNumber').map(function() {
			      return $(this).val();
			    }).get(),
			    tech_stacks: $('input[type="checkbox"]').map(function () {
											    	return { [this.name]: $(this).is(':checked') ? 'y' : 'n' };
											    }).get(),
			    //id : $('input[name="temp_leader_id"]').val(),
			  };
			
			  // 콘솔에 데이터 출력
			  console.log("Request data:", requestData);




		    $.ajax({
		        type: "POST",
		        url: "/prome/project/buildProject",
		        contentType: "application/json",
		        data: JSON.stringify({
		        		title : $('input[name="project_name"]').val(),
		        		field : $('input[name="step2_radio"]:checked').val(),
		        	  	content : $('.ProseMirror')[0].innerHTML,						
		        	  	start_date : $('input[name="start-date"]').val(),
	        		  	due_date : $('input[name="end-date"]').val(),
		        		recruitmentFields : $('select[name="recruitment_field"]').map(function () {
		        									return $(this).val();
		        								}).get(),
						recruitCounts : $('.recruit_countNumber').map(function () {
										        	return $(this).val();
										        }).get(),
	        		  	tech_stacks: $('input[type="checkbox"]').map(function () {
									  return { [this.name]: $(this).is(':checked') ? 'y' : 'n' };
									}).get().reduce(function (acc, cur) {
									  return Object.assign(acc, cur);
									}, {}),		    
	        		  	//id : $('input[name="temp_leader_id"]').val(),
		      			}),
		        success: function () {
		        	localStorage.removeItem('tempSaveData');
			        alert("프로젝트 작성이 완료되었습니다.");
					location.replace('/prome/');
		        },
		        error: function (err) {
					console.log(err);
		        }
		    });        
        });
        
        
   

	/*************** submitbtn.click ***************/    	        
});
	          
	          
	          
$(document).ready(function() {


 	$('#tempSaveBtn').click(function() {
 	  alert("임시저장되었습니다.");
 	 const data = {
		    title: $('input[name="project_name"]').val(),
		    field: $('input[name="step2_radio"]:checked').val(),
		    content: $('.ProseMirror')[0].innerHTML,
		    start_date: $('input[name="start-date"]').val(),
		    due_date: $('input[name="end-date"]').val(),
		    recruitmentFields: $('select[name="recruitment_field"]').map(function () {
		      return $(this).val();
		    }).get(),
		    recruitCounts: $('.recruit_countNumber').map(function () {
		      return $(this).val();
		    }).get(),
		    tech_stacks: $('input[type="checkbox"]').map(function () {
		      return { [this.name]: $(this).is(':checked') ? 'y' : 'n' };
		    }).get().reduce(function (acc, cur) {
		      return Object.assign(acc, cur);
		    }, {}),
	  };
  		localStorage.setItem('tempSaveData', JSON.stringify(data));
	}); 
 	/*************** 임시저장 ***************/	  
 	
 	/*************** 임시저장 불러오기 ***************/	  	    
	 const loadData = JSON.parse(localStorage.getItem('tempSaveData'));
		  if (loadData) {
		    $('input[name="project_name"]').val(loadData.title);
		    $('input[value="' + loadData.field + '"]').prop('checked', true);
		    $('.ProseMirror')[0].innerHTML = loadData.content;
		    $('input[name="start-date"]').val(loadData.start_date);
		    $('input[name="end-date"]').val(loadData.due_date);
		    $('select[name="recruitment_field"]').each(function(index) {
		      $(this).val(loadData.recruitmentFields[index]);
		    });
		    $('.recruit_countNumber').each(function(index) {
		      $(this).val(loadData.recruitCounts[index]);
		    });
		    Object.entries(loadData.tech_stacks).forEach(([name, value]) => {
		      $('input[name="' + name + '"]').prop('checked', value === 'y');
		    });
		  }
		  
 	/*************** 임시저장 불러오기 ***************/	      

});
	          
	            
     
	        
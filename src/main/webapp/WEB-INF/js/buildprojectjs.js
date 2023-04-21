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
	      
	      

	 	/**프로젝트 설명 val()처리**/  
	 	// 본문에서 focusout 시 본문의 내용을 hidden-input의 val()로 저장
	 	$('.ProseMirror').focusout(function(){        
	        var content = $('.ProseMirror').text(); // contenteditable div의 텍스트를 가져옵니다.
	        $('#hidden-input').val(content); // 가져온 텍스트를 숨겨진 input에 저장합니다.
	    });  
	    /**프로젝트 설명 val()처리**/ 



	    /**모집 분야 1/0 처리**/  
	    // 동적 처리 부분인데 name으로 처리하는게 맞나? 다 같은 name을 가지고 있을텐데
	    	    
	//	$("select[name='recruitment_field']").on("change", function(){
		//	var str =( $('.form-select option:selected').text() );
		//	console.log(str);
			
	//	    if($(this).is("selected")){
	//	        $(this).val("1");
	//	    } else {
	//	        $(this).val("0");
	//	    }
	//	});
	    /**모집 분야 1/0 처리**/


	    /**기술/언어 y/n 처리**/
		$('input[type="checkbox"]').on("change", function(){
		    if($(this).is(":checked")){
		        $(this).val("y");
		    } else {
		        $(this).val("n");
		    }
		});
	    /**기술/언어 y/n 처리**/

     
	        
});
 $(document).ready(function() {
 
 
 /*************** 모집 인원 동적 처리***************/ 		
 		// 모집인원이 1일 때 - 버튼 투명도 0.5 -> 처음 한번만 적용됨, 수정 필요.
		function updateMinusButtonOpacity() {
		        $(".recruit").each(function() {
		            var countNumber = $(this).find(".recruit_countNumber");
		            var count = parseInt(countNumber.text());
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
            var count = parseInt(countNumber.text());
            count += 1;
            countNumber.text(count);
            updateMinusButtonOpacity();
        });

		// -버튼 클릭시
        $(document).on("click", ".imageBtnminus", function() {
            var countNumber = $(this).siblings(".recruit_countNumber");
            var count = parseInt(countNumber.text());
            if (count > 1) {
                count -= 1;
                countNumber.text(count);
            }
            updateMinusButtonOpacity();
            
        });

		// 추가 버튼 클릭시
        $(document).on("click", ".recruit_plus", function() {
            var newRecruit = $(".recruit").first().clone();
            newRecruit.find(".recruit_countNumber").text("1");
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

 /*************** 모집 인원 동적 처리***************/        
        
        
        
    });
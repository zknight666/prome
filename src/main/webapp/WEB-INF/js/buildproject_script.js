$(document).ready(function () {


  /*************** 모집 인원 동적 처리***************/
  function updateOpacity() {
    let totalCount = 0;
    $(".recruit").each(function () {
      var countNumber = $(this).find(".recruit_countNumber");
      var count = parseInt(countNumber.val());
      totalCount += count;
      var minusButton = $(this).find(".imageBtnminus");
      var plusButton = $(this).find(".imageBtnplus");
      
    minusButton.css("opacity", count <= 1 ? "0.5" : "1");
	plusButton.css("opacity", totalCount >= 9 ? "0.5" : "1");
	$('.recruit_plus').css("opacity", totalCount >= 9 ? "0.5" : "1");
    });
  }

  // +버튼 클릭시
  $(document).on("click", ".imageBtnplus", function () {
    var countNumber = $(this).siblings(".recruit_countNumber");
    var count = parseInt(countNumber.val());
    let totalCount = 0;

    $(".recruit_countNumber").each(function () {
      totalCount += parseInt($(this).val());
    });

    if (totalCount < 9) {
      count += 1;
      countNumber.val(count);
    }
    updateOpacity();
  });

  // -버튼 클릭시
  $(document).on("click", ".imageBtnminus", function () {
    var countNumber = $(this).siblings(".recruit_countNumber");
    var count = parseInt(countNumber.val());

    let totalCount = 0;
    $(".recruit_countNumber").each(function () {
      totalCount += parseInt($(this).val());
    });

    if (count > 1 && totalCount <= 9) {
      count -= 1;
      countNumber.val(count);
    }
    updateOpacity();
  });

  // 추가 버튼 클릭시
  $(document).on("click", ".recruit_plus", function () {
    let totalCount = 0;
    $(".recruit_countNumber").each(function () {
      totalCount += parseInt($(this).val());
    });
    if (totalCount <= 8) {
      var newRecruit = $(".recruit").first().clone();
      newRecruit.find(".recruit_countNumber").val("1");
      newRecruit
        .find(".recruit_countNumber")
        .attr("name", "recruit_count_" + $(".recruit").length);
      newRecruit.appendTo("#recruitContainer");
    }
    updateOpacity();
  });

  // 삭제 버튼 클릭시
  $(document).on("click", ".recruit_minus", function () {
    if ($(".recruit").length > 1) {
      $(".recruit").last().remove();
      updateOpacity();
    }
  });

  // 모집 분야 별 인원 수 name 초기 값
  $(".recruit_countNumber").attr("name", "recruit_count_0");
  /*************** 모집 인원 동적 처리***************/

  /**기술/언어 Y/N 처리**/
  $('input[type="checkbox"]').on("change", function () {
    if ($(this).is(":checked")) {
      $(this).val("Y");
    } else {
      $(this).val("N");
    }
  });
  /**기술/언어 Y/N 처리**/

  /*************** submitbtn.click ***************/

	// 유효성 검사
  $("#submitBtn").click(function (event) {
    if (
      $('input[name="project_name"]').val() == "" ||
      $('input[name="step2_radio"]:checked').val() == undefined ||
      $('select[name="recruitment_field"]').val() == "" ||
      $('input[name="start-date"]').val() == "" ||
      $('input[name="end-date"]').val() == ""
    ) {
    } else if ($("#main_content").text().length < 20) {
      event.preventDefault();
      alert("내용을 입력해주세요");
    } 
    // db 전달
    else {
      event.preventDefault();
      $.ajax({
        type: "POST",
        url: "/prome/project/buildProject",
        contentType: "application/json",
        data: JSON.stringify({
          title: $('input[name="project_name"]').val(),
          field: $('input[name="step2_radio"]:checked').val(),
          content: $(".ProseMirror")[0].innerHTML,
          start_date: $('input[name="start-date"]').val(),
          due_date: $('input[name="end-date"]').val(),
          recruitmentFields: $('select[name="recruitment_field"]')
            .map(function () {
              return $(this).val();
            })
            .get(),
          recruitCounts: $(".recruit_countNumber")
            .map(function () {
              return $(this).val();
            })
            .get(),
          tech_stacks: $('input[type="checkbox"]')
            .map(function () {
              return { [this.name]: $(this).is(":checked") ? "Y" : "N" };
            })
            .get()
            .reduce(function (acc, cur) {
              return Object.assign(acc, cur);
            }, {}),
        }),
        success: function () {
          localStorage.removeItem("tempSaveData");
          alert("프로젝트 작성이 완료되었습니다.");
          location.replace("/prome/");
        },
        error: function (err) {
          console.log(err);
        },
        
      }); //$.ajax
    } // else
  }); // $('#submitBtn').click(function(event)
}); // $(document).ready(function ()
/*************** submitbtn.click ***************/



  /*************** 임시저장 ***************/
$(document).ready(function () {
  $("#tempSaveBtn").click(function () {
    alert("임시저장되었습니다.");
    const data = {
      title: $('input[name="project_name"]').val(),
      field: $('input[name="step2_radio"]:checked').val(),
      content: $(".ProseMirror")[0].innerHTML,
      start_date: $('input[name="start-date"]').val(),
      due_date: $('input[name="end-date"]').val(),
      recruitmentFields: $('select[name="recruitment_field"]')
        .map(function () {
          return $(this).val();
        })
        .get(),
      recruitCounts: $(".recruit_countNumber")
        .map(function () {
          return $(this).val();
        })
        .get(),
      tech_stacks: $('input[type="checkbox"]')
        .map(function () {
          return { [this.name]: $(this).is(":checked") ? "Y" : "N" };
        })
        .get()
        .reduce(function (acc, cur) {
          return Object.assign(acc, cur);
        }, {}),
    };
    localStorage.setItem("tempSaveData", JSON.stringify(data));
  });
  /*************** 임시저장 ***************/

  /*************** 임시저장 불러오기 ***************/
  const loadData = JSON.parse(localStorage.getItem("tempSaveData"));
  if (loadData) {
    $('input[name="project_name"]').val(loadData.title);
    $('input[value="' + loadData.field + '"]').prop("checked", true);
    $(".ProseMirror")[0].innerHTML = loadData.content;
    $('input[name="start-date"]').val(loadData.start_date);
    $('input[name="end-date"]').val(loadData.due_date);
    $('select[name="recruitment_field"]').each(function (index) {
      $(this).val(loadData.recruitmentFields[index]);
    });
    $(".recruit_countNumber").each(function (index) {
      $(this).val(loadData.recruitCounts[index]);
    });
    Object.entries(loadData.tech_stacks).forEach(([name, value]) => {
      $('input[name="' + name + '"]').prop("checked", value === "y");
    });
  }

  /*************** 임시저장 불러오기 ***************/

});
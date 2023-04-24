$(function () {
	 $.ajax({
      type: "get",
      url: "/prome/project/",
      data: "pg=" + $("#pg").val(),
      success: function (data) {
        //중복된 아이디 있으면 exist, 중복된 아이디 없으면 non_exist
        if (data == "exist") {
          $("#idCheckDiv").text("사용 불가능");
          $("#idCheckDiv").val("dup");
          $("#idCheckDiv").css("color", "red");
        } else if (data == "non_exist") {
          $("#idCheckDiv").text("사용 가능");
          $("#idCheckDiv").val("non_dup");
          $("#idCheckDiv").css("color", "blue");
        }
      },
      error: function (err) {
        console.log(err);
      },
    });
});
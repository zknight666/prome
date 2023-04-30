//회원 정보 불러오기
$(function () {
  $.ajax({
    type: "post",
    url: "/prome/users/getUser",
    success: function (data) {
      $("#name").val(data.name);
      $("#pwd").val(data.pwd);
      $("#id").val(data.id);
      $("#gender").val(data.gender);
      $("#email1").val(data.email1);
      $("#email2").val(data.email2);
      $("#phone1").val(data.phone1);
      $("#phone2").val(data.phone2);
      $("#phone3").val(data.phone3);
      $("#address1").val(data.address1);
      $("#address2").val(data.address2);
      $("#address3").val(data.address3);
      if ($("#gender").val() == "M") {
        $("#optionsRadios1").attr("checked", "checked");
      } else if ($("#gender").val() == "W") {
        $("#optionsRadios2").attr("checked", "checked");
      }
      $.ajax({
        type: "post",
        url: "/prome/users/getIcon",
        success: function (data) {
          	$("#android").val(data.android),
            $("#aws").val(data.aws),
            $("#docker").val(data.docker),
            $("#c").val(data.c),
            $("#figma").val(data.figma),
            $("#flutter").val(data.flutter),
            $("#git").val(data.git),
            $("#html").val(data.html),
            $("#ios").val(data.ios),
            $("#javascript").val(data.javascript),
            $("#java").val(data.java),
            $("#kotlin").val(data.kotlin),
            $("#kubernetes").val(data.kubernetes),
            $("#mongodb").val(data.mongodb),
            $("#mysql").val(data.mysql),
            $("#nodejs").val(data.nodejs),
            $("#photoshop").val(data.photoshop),
            $("#python").val(data.python),
            $("#react").val(data.react),
            $("#spring").val(data.spring),
            $("#tensorflow").val(data.tensorflow),
            $("#typescript").val(data.typescript),
            $("#unity").val(data.unity),
            $("#vue").val(data.vue);
          $('input[name="tech"]').each(function () {
            if ($(this).val() == "N") {
              this.checked = false;
            } else if ($(this).val() == "Y") {
              this.checked = true;
            }
          });
        },
        error: function (err) {
          console.log(err);
        },
      });
    },
    error: function (err) {
      console.log(err);
    },
  });
});

//아이콘 변경
$('input[name="tech"]').change(function (e) {
  if ($(this).val() == "N") {
    $(this).val("Y");
    console.log($(this).val());
  } else if ($(this).val() == "Y") {
    $(this).val("N");
  	console.log($(this).val());
  }
});

//비밀번호 확인
$("#pwd1").focusout(function () {
  $("#pwd1CheckDiv").empty();
  if ($("#pwd1").val() == "") {
    $("#pwd1CheckDiv").text("먼저 비밀번호를 입력해주세요.");
  } else {
    if ($("#pwd2").val() != "") {
      if ($("#pwd1").val() != $("#pwd2").val()) {
        $("#pwd2CheckDiv").text("비밀번호가 일치하지 않습니다.");
        $("#pwd2CheckDiv").css("color", "red");
        $("#pwd2CheckDiv").val("non_same");
      }
      if ($("#pwd1").val() == $("#pwd2").val()) {
        $("#pwd2CheckDiv").text("일치");
        $("#pwd2CheckDiv").val("same");
        $("#pwd2CheckDiv").css("color", "blue");
      }
    }
  }
});
$("#pwd2").focusout(function () {
  $("#pwd2CheckDiv").empty();
  if ($("#pwd2").val() == "") {
    $("#pwd2CheckDiv").text("먼저 비밀번호를 입력해주세요.");
    $("#pwd2CheckDiv").css("color", "red");
  } else {
    if ($("#pwd1").val() != $("#pwd2").val()) {
      $("#pwd2CheckDiv").text("비밀번호가 일치하지 않습니다.");
      $("#pwd2CheckDiv").css("color", "red");
      $("#pwd2CheckDiv").val("non_same");
    }
    if ($("#pwd1").val() == $("#pwd2").val()) {
      $("#pwd2CheckDiv").text("일치");
      $("#pwd2CheckDiv").val("same");
      $("#pwd2CheckDiv").css("color", "blue");
    }
  }
});
//주소
function execDaumPostcode() {
  new daum.Postcode({
    oncomplete: function (data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var addr = ""; // 주소 변수
      var extraAddr = ""; // 참고항목 변수

      //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
      if (data.userSelectedType === "R") {
        // 사용자가 도로명 주소를 선택했을 경우
        addr = data.roadAddress;
      } else {
        // 사용자가 지번 주소를 선택했을 경우(J)
        addr = data.jibunAddress;
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById("address1").value = data.zonecode;
      document.getElementById("address2").value = addr;
      // 커서를 상세주소 필드로 이동한다.
      document.getElementById("address3").focus();
    },
  }).open();
}

//확인 버튼
$("#updateBtn").click(function () {
  if ($("#name").val() == "") {
    alert("이름을 입력해주세요");
    $("#name").focus();
    return;
  }
  if ($("#pwd1").val() == "") {
    alert("비밀번호를 입력해주세요");
    $("#pwd1").focus();
    return;
  }
  if ($("#pwd2").val() == "") {
    alert("비밀번호 확인을 해주세요");
    $("#pwd2").focus();
    return;
  }
  if ($("#pwd2CheckDiv").val() == "non_same") {
    alert("비밀번호가 일치하지 않습니다.");
    $("#pwd2").focus();
    return;
  }
  if ($("#phone1").val() == "") {
    alert("핸드폰 번호를 선택해주세요");
    $("#phone1").focus();
    return;
  }
  if ($("#phone2").val() == "") {
    alert("핸드폰 번호를 입력해주세요");
    $("#phone2").focus();
    return;
  }
  if ($("#phone3").val() == "") {
    alert("핸드폰 번호를 입력해주세요");
    $("#phone3").focus();
    return;
  }
  $.ajax({
    type: "post",
    url: "/prome/users/updateInfo",
    data: {
      name: $("#name").val(),
      id: $("#id").val(),
      pwd: $("#pwd2").val(),
      gender: $("#gender").val(),
      email1: $("#email1").val(),
      email2: $("#email2").val(),
      phone1: $("#phone1").val(),
      phone2: $("#phone2").val(),
      phone3: $("#phone3").val(),
      address1: $("#address1").val(),
      address2: $("#address2").val(),
      address3: $("#address3").val(),
    }, //서버로 보내는 데이터
    dataType: "text", //서버로 받는 데이터형 ex) text,json,xml
    success: function (data) {
      $.ajax({
        type: "post",
        url: "/prome/users/updateIcon",
        data: {
          id: $("#id").val(),
          android: $("#android").val(),
          aws: $("#aws").val(),
          docker: $("#docker").val(),
          c: $("#c").val(),
          figma: $("#figma").val(),
          flutter: $("#flutter").val(),
          git: $("#git").val(),
          html: $("#html").val(),
          ios: $("#ios").val(),
          javascript: $("#javascript").val(),
          java: $("#java").val(),
          kotlin: $("#kotlin").val(),
          kubernetes: $("#kubernetes").val(),
          mongodb: $("#mongodb").val(),
          mysql: $("#mysql").val(),
          nodejs: $("#nodejs").val(),
          photoshop: $("#photoshop").val(),
          python: $("#python").val(),
          react: $("#react").val(),
          spring: $("#spring").val(),
          tensorflow: $("#tensorflow").val(),
          typescript: $("#typescript").val(),
          unity: $("#unity").val(),
          vue: $("#vue").val(),
        },
        dataType: "text",
        success: function (data1) {
          alert('회원정보 수정 완료');
          location.replace('/prome');
        },
        error: function (err) {
          alert("회원정보 수정 실패.");
        },
      });
    },
    error: function (err) {
      console.log(err);
    },
  });
});

//비밀번호 확인
$("#pwd1").focusout(function () {
  $("#pwd1CheckDiv").empty();
  if ($("#pwd1").val() == "") {
    $("#pwd1CheckDiv").text("먼저 비밀번호를 입력해주세요.");
  } else {
    if ($("#pwd2").val() != "") {
      if ($("#pwd1").val() != $("#pwd2").val()) {
        $("#pwd2CheckDiv").text("비밀번호가 일치하지 않습니다.");
        $("#pwd2CheckDiv").css("color", "red");
        $("#pwd2CheckDiv").val("non_same");
      }
      if ($("#pwd1").val() == $("#pwd2").val()) {
        $("#pwd2CheckDiv").text("일치");
        $("#pwd2CheckDiv").val("same");
        $("#pwd2CheckDiv").css("color", "blue");
      }
    }
  }
});
$("#pwd2").focusout(function () {
  $("#pwd2CheckDiv").empty();
  if ($("#pwd2").val() == "") {
    $("#pwd2CheckDiv").text("먼저 비밀번호를 입력해주세요.");
    $("#pwd2CheckDiv").css("color", "red");
  } else {
    if ($("#pwd1").val() != $("#pwd2").val()) {
      $("#pwd2CheckDiv").text("비밀번호가 일치하지 않습니다.");
      $("#pwd2CheckDiv").css("color", "red");
      $("#pwd2CheckDiv").val("non_same");
    }
    if ($("#pwd1").val() == $("#pwd2").val()) {
      $("#pwd2CheckDiv").text("일치");
      $("#pwd2CheckDiv").val("same");
      $("#pwd2CheckDiv").css("color", "blue");
    }
  }
});
//초기화버튼
$("#resetBtn").click(function () {
  $.ajax({
    type: "post",
    url: "/prome/users/getUser",
    success: function (data) {
      $("#name").val(data.name);
      $("#id").val(data.id);
      $("#pwd").val(data.pwd);
      $("#gender").val(data.gender);
      $("#email1").val(data.email1);
      $("#email2").val(data.email2);
      $("#phone1").val(data.phone1);
      $("#phone2").val(data.phone2);
      $("#phone3").val(data.phone3);
      $("#address1").val(data.address1);
      $("#address2").val(data.address2);
      $("#address3").val(data.address3);
      if ($("#gender").val() == "M") {
        $("#optionsRadios1").attr("checked", "checked");
      } else if ($("#gender").val() == "W") {
        $("#optionsRadios2").attr("checked", "checked");
      }
      $.ajax({
        type: "post",
        url: "/prome/users/getIcon",
        success: function (data) {
          $("#android").val(data.android),
            $("#aws").val(data.aws),
            $("#docker").val(data.docker),
            $("#c").val(data.c),
            $("#figma").val(data.figma),
            $("#flutter").val(data.flutter),
            $("#git").val(data.git),
            $("#html").val(data.html),
            $("#ios").val(data.ios),
            $("#javascript").val(data.javascript),
            $("#java").val(data.java),
            $("#kotlin").val(data.kotlin),
            $("#kubernetes").val(data.kubernetes),
            $("#mongodb").val(data.mongodb),
            $("#mysql").val(data.mysql),
            $("#nodejs").val(data.nodejs),
            $("#photoshop").val(data.photoshop),
            $("#python").val(data.python),
            $("#react").val(data.react),
            $("#spring").val(data.spring),
            $("#tensorflow").val(data.tensorflow),
            $("#typescript").val(data.typescript),
            $("#unity").val(data.unity),
            $("#vue").val(data.vue);
          $('input[name="tech"]').each(function () {
            if ($(this).val() == "N") {
              this.checked = false;
            } else if ($(this).val() == "Y") {
              this.checked = true;
            }
          });
        },
        error: function (err) {
          console.log(err);
        },
      });
    },
    error: function (err) {
      console.log(err);
    },
  });
});

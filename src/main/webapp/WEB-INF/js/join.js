// 이메일 버튼
$(function () {
  $("#email_select").change(function () {
    $("#email2").val($("#email_select").val());
  });
});

// 성별 변경
$('input[name="gender"]').change(function (e) {
  $("#gender").val(e.target.value);
});

//아이디 중복 체크
$("#id").focusout(function () {
  $("#idCheckDiv").empty();
  $("#idCheckDiv").css("color", "red");
  if ($("#id").val() == "") {
    $("#idCheckDiv").text("먼저 아이디를 입력해주세요.");
    $("#id").focus();
  } else {
    $.ajax({
      type: "post",
      url: "/prome/users/isExistId",
      data: "id=" + $("#id").val(), //서버로 보내는 데이터
      dataType: "text", //서버로 받는 데이터형 ex) text,json,xml
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

//이메일 인증api 즐겨찾기에 넣어 둠
var code = "";
$("#email_checkBtn").click(function () {
  if ($("#email1").val() == "") {
    alert("잘못된 이메일 형식입니다.");
    return;
  }
  if ($("#email2").val() == "") {
    alert("잘못된 이메일 형식입니다.");
    return;
  }
  $("#email_checkDiv").attr("class", "email_on");
  var sm_email = $("#email1").val() + "@" + $("#email2").val();
  $.ajax({
    type: "GET",
    url: "/prome/mail/send?sm_email=" + sm_email,
    cache: false,
    success: function (data) {
      alert(
        "인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오."
      );
      $(".successEmailChk").text(
        "인증번호를 입력한 뒤 이메일 인증을 눌러주십시오."
      );
      $(".successEmailChk").css("color", "green");
      code = data;
    },
  });
});
$("#email_checkBtn1").click(function () {
  if ($("#certi").val() == code) {
    $(".successEmailChk").text("인증되었습니다");
    $(".successEmailChk").css("color", "blue");
    $("#email_checkBtn1").attr("disabled", true);
    $("#email_checkBtn").attr("disabled", true);
    $("#certi_check").val("1");
  } else {
    $(".successEmailChk").text("잘못된 인증번호 입니다.");
    $(".successEmailChk").css("color", "red");
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

//icon
//아이콘 변경
$('input[name="tech"]').change(function (e) {
  if ($(this).val() == "N") {
    $(this).val("Y");
  } else if ($(this).val() == "Y") {
    $(this).val("N");
  }
});

//회원가입 버튼
$("#signup").click(function () {
  if ($("#certi_check").val() == "0") {
    alert("이메일 인증해주세요");
    return;
  }
  if ($("#name").val() == "") {
    alert("이름을 입력해주세요");
    $("#name").focus();
    return;
  }
  if ($("#id").val() == "") {
    alert("아이디를 입력해주세요");
    $("#id").focus();
    return;
  }
  if ($("#idCheckDiv").val() == "dup") {
    alert("이미 존재하는 아이디입니다.");
    $("#id").focus();
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
  if ($("#email1").val() == "") {
    alert("이메일을 입력해주세요");
    $("#email1").focus();
    return;
  }
  if ($("#email2").val() == "") {
    alert("이메일을 선택해주세요");
    $("#email2").focus();
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
    url: "/prome/users/signup",
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
        url: "/prome/users/setIcon",
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
          $.ajax({
            type: "get",
            url: "/prome/",
            data: {
              id: $("#id").val(),
            },
            success: function (data2) {
              alert("회원가입되셨습니다.");
              location.replace('/prome/');
            },
            error: function (err) {
              alert("회원가입 실패했습니다.");
            },
          });
        },
        error: function (err) {
          alert("회원가입 실패했습니다.");
        },
      });
    },
    error: function (err) {
      console.log(err);
    },
  });
});

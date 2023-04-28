$('#login').click(function(){
	if($('#prome_id').val() == ''){
		alert('아이디를 입력해주세요.');
		return;
	}
	if($('#prome_pwd').val() == ''){
		alert('비밀번호를 입력해주세요.');
		return;
	}
	$.ajax({
      type: "post",
      url: "/prome/users/login",
      data: {
      	id : $('#prome_id').val(),
      	pwd: $('#prome_pwd').val()
      },
      success: function (data) {
        if (data == 'ok') {
          alert('로그인 성공');
          location.replace('/prome?id='+$('#prome_id').val());
        } else if (data == 'fail'){
          alert('아이디 또는 비밀번호가 틀립니다.');
        }
      },
      error: function (err) {
      	alert('아이디 또는 비밀번호가 틀립니다. err');
      },
    });
});
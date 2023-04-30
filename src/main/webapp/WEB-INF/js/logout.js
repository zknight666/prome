$('#logoutBtn').click(function () {
	$.ajax({
	type: "post",
	url: "/prome/users/logout",
    success: function (data) {        	      
    	location.replace('/prome');
    },
    error: function (err) {
    	alert(err);
    },
    });
});
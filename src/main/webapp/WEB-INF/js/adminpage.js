$(function(){

	//페이징 처리 - $.ajax success에서 사용			
//	$('#projectPaging').html(data.projectPaging.pagingHTML);	


	$('#deleteProjectBtn').click(function(){
		if(confirm(projectId +'-'+ title + ' 삭제하시겠습니까?')){
		$.ajax({
			type: "post",
			url: "/prome/project/adminDeleteProject",
			data: 'projectId='+$('#projectId').val(),
			success: function(result){
				window.alert('프로젝트를 삭제하였습니다.');
				location.reload();
			},
			error: function(request, status, error){
		    	console.log("ajax error");
		    }
		});
		}//if
	
	});

	//회원관리 페이지로 이동
	$('#manageUser').click(function(){
		location.href = "/prome/project/adminUserPage";
	});	
});

//adminpage
$(function(){
	$.ajax({
		type: 'post',
		url: '/prome/project/adminProject',
		data: {
			field: $('#exampleSelect1').val(),
      			recruit_state: $('#flexCheckChecked').val(),
      			pg: $('#pg').val()
      		},
		success: function(data){
			console.log(JSON.stringify(data));
			
			$.each(data.list, function(index, items){
				var varTitle = items.title;
				$('#title').append(varTitle);
				
//				var varProject_tech_stack = items.project_tech_stack;
//				$('#project_tech_stack').append(varProject_tech_stack);
				
				var varMember = items.member;
				$('#member').append(varMember);
				
				var varMember_need = items.member_need;
				$('#member_need').append(varMember_need);
			}); //each
			
			//페이징 처리
			$('#paging').html(data.projectPaging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
	});
	
	$('#deleteBtn').click(function(){
		$.ajax({
			type: 'post',
			url: '/prome/project/deleteProject',
			data: 'title='+$('#title').val(),
			success: function(){
				location.href='/prome/project/adminpage';
			},
			error: function(err){
				console.log(err);
			}
		});
	}); //deleteBtn
});
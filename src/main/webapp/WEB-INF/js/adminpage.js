//$('#projectList').click(function(){
/*
$(function(){
	$('#profile').hide();
	$.ajax({
		type: 'post',
		url: '/prome/project/adminProject',
		data: {
				field: $('#exampleSelect1').val(),
      			recruit_state: $('#flexCheckChecked').val(),
      			projectId : $('#projectId').val(),
      			pg: $('#pg').val()
      		},
		success: function(data){
			console.log(JSON.stringify(data));
			
			$.each(data.list, function(index, items){
				var varTitle = items.title;
				$('#title').append(varTitle);
				
				var varProject_tech_stack = items.chosenTech;
				$('#project_tech_stack').append(varProject_tech_stack);
				
				var varMember = items.member;
				$('#member').append(varMember);
				
				var varMember_need = items.member_need;
				$('#member_need').append(varMember_need);
				
				
				
			}); //each
			
			
			//페이징 처리
			$('#paging').html(data.projectPaging.pagingHTML);
			
			$('#home').show();
			
		},
		error: function(err){
			console.log(err);
		}
	});
	
	$('#deleteBtn').click(function(){
		$.ajax({
			type: 'post',
			url: '/prome/project/deleteProject',
			data: 'projectId='+$('#projectId').val(),
			success: function(){
				location.href='/prome/project/adminpage';
			},
			error: function(err){
				console.log(err);
			}
		});
	}); //deleteBtn
}); */
	
$(function(){
	//회원관리
	$('.nav-link').click(function(){
	//	$('#profile').show();
		$.ajax({
			type: 'post',
			url: '/prome/project/adminGetUserList',
			data: 'userPg=' +$('#userPg').val(),
			dataType: 'json',
			success: function(data){
				console.log(JSON.stringify(data));
				$('#userListTable').empty();
	
				var html = '';
				$.each(data.list, function(index, items){
				  html += '<tr align="center">';
				  html += '<td align="center" class="td_column_check_manager">';
				  html += '<input class="mx-4 check_checkbox" type="checkbox" value="' + items.id + '">';
				  html += '</td>';
				  html += '<td>' + items.name + '</td>';
				  html += '<td>' + items.id + '</td>';
				  html += '<td>' + items.gender + '</td>';
				  html += '<td>' + items.email1 +'@'+ items.email2 + '</td>';
				  html += '<td>' + items.phone1 +'-'+ items.phone2 +'-'+ items.phone3 + '</td>';
				  html += '<td>' + items.address2 +'&nbsp;' + items.address3 +'&nbsp;' + items.address1 + '</td>';
				  html += '<td>' + items.signup_date + '</td>';
				  html += '</tr>';
				});
				$('#userListTable').html(html);
				
				//페이징 처리				
				$('#userPaging').html(data.userPaging.pagingHTML);		
			},
			error: function(err){
				console.log(err);
			}
		}); //ajax
		
		
		$('.btn btn-outline-dark px-2 py-1').click(function(){
		    var checkedUser = $('input[type=checkbox]:checked').map(function () {
		        return $(this).val();
		    }).get();
		
		    $.ajax({
		        type: "post",
		        url: "/prome/project/adminDeleteUser",
		        data: JSON.stringify({ checkedUser : checkedUser }),
		        contentType: "application/json",
		        success: function(result){
		            console.log(result);
		        },
		        error: function(request, status, error){
		            console.log("ajax error");
		        }
		    });
		});

	});	
});

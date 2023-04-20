/*!
* Start Bootstrap - Shop Homepage v5.0.6 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project
//adminpage


//$('#projectList').click(function(){
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

	
	//회원관리
	$('#userList').click(function(){
		$('#home').hide();
		$.ajax({
			type: 'post',
			url: '/prome/project/getUserList',
			success: function(data){
				console.log(JSON.stringify(data));
				$('#userListTable').empty();
				$.each(data.list, function(index, items){
					
					$('<tr/>').append($('<td/>', {
						align: 'center',
						class: 'td_column_check_manager'
					}).append('<input/>', {
						class: 'mx-4 check_checkbox',
						type: 'checkbox'
					})).append($('<td/>', {
						align: 'center',
						text: items.name
					})).append($('<td/>', {
						align: 'center',
						text: items.id
					})).append($('<td/>', {
						align: 'center',
						text: items.gender
					})).append($('<td/>', {
						align: 'center',
						text: items.email1 + items.email2
					})).append($('<td/>', {
						align: 'center',
						text: items.phone1 + items.phone2 + items.phone3
					})).append($('<td/>', {
						align: 'center',
						text: items.address1 + items.address2 + items.address3
					})).append($('<td/>', {
						align: 'center',
						text: items.signup_date
					})).appendTo($('#userListTable'));
				}); //each
				
			},
			error: function(err){
				console.log(err);
			}
		}); //ajax
		$('#profile').show();
	});	
});
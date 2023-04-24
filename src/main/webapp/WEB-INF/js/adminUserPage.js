$(function(){
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
			  html += '<input class="mx-4 check_checkbox" type="checkbox" value="'+items.id+'">';
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
	
	
	$('.py-1').click(function(){
	    var checkedUser = $('input[type=checkbox]:checked').map(function () {
	        return $(this).val();
	    }).get();
	
	console.log(checkedUser);
	
	    $.ajax({
	        type: "post",
	        url: "/prome/project/adminDeleteUser",
	        data: JSON.stringify({ 'checkedUser' : checkedUser }),
	        contentType: "application/json",
	        success: function(result){
	            window.alert(checkedUser +"가 삭제 되었습니다.");
				location.reload();
	        },
	        error: function(request, status, error){
	            console.log("ajax error");
	        }
	    });
	});

	$('#manageProject').click(function(){
		location.href = "/prome/project/adminpage";
	});	
});
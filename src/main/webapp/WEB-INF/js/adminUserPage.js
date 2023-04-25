$(function(){
	$.ajax({
		type: 'post',
		url: '/prome/project/adminGetUserList',
		data: 'userPg=' +$('#userPg').val(),
		dataType: 'json',
		success: function(data) {
			console.log(JSON.stringify(data));
			$('#userListTable').empty();
			
			function formatDate(date) {  //javascript 날짜 형식 변환 함수(yyyy-MM-dd)
				var d = new Date(date),
			    month = '' + (d.getMonth() + 1),
			    day = '' + d.getDate(),
			    year = d.getFullYear();
			
			    if (month.length < 2)
			    	month = '0' + month;
			    if (day.length < 2)
			    	day = '0' + day;
			
			    return [year, month, day].join('-');
			}
		
			var html = '';
				$.each(data.list, function(index, items) {
				html += '<tr align="center">';
				html += '<td align="center" class="td_column_check_manager">';
				html += '<input class="mx-4 check_checkbox" type="checkbox" value="' + items.id + '">';
				html += '</td>';
				html += '<td class="td_column_name_manager">' + items.name + '</td>';
				html += '<td class="td_column_id_manager">' + items.id + '</td>';
				html += '<td class="td_column_gender_manager">' + items.gender + '</td>';
				html += '<td class="td_column_email_manager">' + items.email1 + '@' + items.email2 + '</td>';
				html += '<td class="td_column_phone_manager">' + items.phone1 + '-' + items.phone2 + '-' + items.phone3 + '</td>';
				html += '<td class="td_column_address_manager">' + items.address2 + '&nbsp;' + items.address3 + '&nbsp;' + items.address1 + '</td>';
				html += '<td class="td_column_subscription_manager">' + formatDate(items.signup_date) + '</td>';
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
		
		if(confirm('아이디 ' +checkedUser+ ' 삭제하시겠습니까?')){
		    $.ajax({
		        type: "post",
		        url: "/prome/project/adminDeleteUser",
		        data: JSON.stringify({ 'checkedUser' : checkedUser }),
		        contentType: "application/json",
		        success: function(result){
		            window.alert('회원정보를 삭제하였습니다.');
					location.reload();
		        },
		        error: function(request, status, error){
		            console.log("ajax error");
		        }
		    });
		
		}//if
	});

	$('#manageProject').click(function(){
		location.href = "/prome/project/adminpage";
	});	
	
});
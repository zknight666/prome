$(function(){
	$.ajax({
		type: 'post',
		url: '/prome/project/getApplicants',
		data: 'team_leader=' +$('#memId').val(),
		success: function(data) {
			console.log(JSON.stringify(data));
			$('#eachProjectDiv').empty();
			
			function changeToIcon(item) {
			    let tech_icons = "";
			    let items = item.split(", ");
			    items.forEach(function(perItem) {				
			        let tech_icon = "../assets/tech-icon/" + perItem.toLowerCase() + ".svg";
			        tech_icons += 
			        '<img loading="lazy" src=' + tech_icon + ' alt=' + perItem + ' title=' + perItem + ' width="22px"/><span style="white-space: pre;"> </span>';
			    });
			    return tech_icons;
			}

		
			var html = '';
			$.each(data, function(index, items) {
				
				html += '<div style="height: auto; padding:20px 0px 20px 0px;">';
			    html += '<span class="h5" style="font-weight: 600"> * ' + items[0].title + '</span>';
				html += '<input type="text" class="project_id project_id'+index+'" value="' + items[0].project_id + '">';
			    html += '<table Style="border:1 solid #cacaca; margin-top: 20px; margin-bottom: 20px;" width="100%">';
			    html += '<tr align="center">';
			    html += '<td align="center" class="td_column_check">';
			    html += '<input class="mx-4 check_checkbox" type="checkbox" id="allcheck">';
			    html += '</td>';
			    html += '<td class="td_column_id">아이디</td>';
			    html += '<td class="td_column_email">이메일</td>';
			    html += '<td class="td_column_tech">기술/언어</td>';
			    html += '<td class="td_column_apply">지원사유</td>';
			    html += '</tr>';
			    html += '</table>';
			    html += '<hr class="m-0" />';
			    html += '<div class="div_height_table">';
			    html += '<table id="applicantsUserTable" width="100%" style="font-weight: 400; margin-top: 10px; margin-bottom: 10px;">';
			
				    $.each(items, function(index, user) {
				        html += '<tr align="center">';
				        html += '<td align="center" class="td_column_check">';
				        html += '<input class="mx-4 check_checkbox" type="checkbox" value="' + user.user_id + '">';
				        html += '</td>';
				        html += '<td class="td_column_id">' + user.user_id + '</td>';
				        html += '<td class="td_column_email">' + user.email1 + '@' + user.email2 + '</td>';
				        html += '<td class="td_column_tech">' + changeToIcon(user.tech_stack) + '</td>';		        	
				        html += '<td class="td_column_apply">' + user.reason + '</td>';
				        html += '</tr>';
				    });
			
			    html += '</table>';
			    html += '</div>';
			    html += '<hr class="m-1" />';
			    html += '<div class="pt-4">';
			    html += '<button type="button" id="accept" class="btn btn-outline-dark px-2 py-1">수락</button>';
			    html += '<button type="button" id="decline" class="btn btn-outline-dark px-2 py-1 mx-2">거절</button>';
			    html += '</div>';
			    html += '</div>';
			});
			
			$('#eachProjectDiv').html(html);


		},	

		error: function(err){
			console.log(err);
		}
	}); //ajax
	
	
	$(document).on('click', '#accept', function(){
	    var checkedUser = $('input[type=checkbox]:checked').map(function () {
	        return $(this).val();
	    }).get();
	    	    
	    var project_id =  $('input[type=checkbox]:checked').parent().parent().parent().parent().parent().prev().prev().prev().val();
	    alert(project_id);
	      
		if (checkedUser.length === 0) {
		    alert('선택된 사용자가 없습니다.');
		} else {
			alert(checkedUser)
		    if (confirm('아이디 ' + checkedUser + ' 수락하시겠습니까?')) {
		    
		    	$.ajax({
				    type: "post",
				    url: "/prome/project/acceptApplicants",
				    data: {
					    'checkedUser': checkedUser,
					    'project_id': project_id
					},
	
				    traditional: true,
				    success: function(result){
				        window.alert('지원을 수락하였습니다.');
				        location.reload();
				    },
				    error: function(request, status, error){
				        console.log("ajax error");
				    }
				});	       
		     
		    }//if
		}//else	
	});
	
	
		$(document).on('click', '#decline', function(){
	    var checkedUser = $('input[type=checkbox]:checked').map(function () {
	        return $(this).val();
	    }).get();
	    	    
	    var project_id =  $('input[type=checkbox]:checked').parent().parent().parent().parent().parent().prev().prev().prev().val();
	    alert(project_id);
	      
		if (checkedUser.length === 0) {
		    alert('선택된 사용자가 없습니다.');
		} else {
			alert(checkedUser)
		    if (confirm('아이디 ' + checkedUser + ' 거절하시겠습니까?')) {
		    
		    	$.ajax({
				    type: "post",
				    url: "/prome/project/declineApplicants",
				    data: {
					    'checkedUser': checkedUser,
					    'project_id': project_id
					},
	
				    traditional: true,
				    success: function(result){
				        window.alert('지원을 거절하였습니다.');
				        location.reload();
				    },
				    error: function(request, status, error){
				        console.log("ajax error");
				    }
				});	       
		     
		    }//if
		}//else	
	});


});
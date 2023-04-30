$(function(){
	$.ajax({
		type: 'GET',
		url: '/prome/project/getApplicants',
		// data: 'team_leader=' +$('#memId').val(), -> 세션으로 대체
		success: function(data) {
			console.log(JSON.stringify(data));
			$('#eachProjectDiv').empty();
			
			function changeToIcon(item) {
			    let tech_icons = "";
			    let items = item.split(",");
			    items.forEach(function(perItem) {				
			        let tech_icon = "../assets/tech-icon/" + perItem.toLowerCase() + ".svg";
			        tech_icons += 
			        '<img loading="lazy" src=' + tech_icon + ' alt=' + perItem + ' title=' + perItem + ' width="22px"/><span style="white-space: pre;"> </span>';
			    });
			    return tech_icons;
			}

		
			var html = '';
			$.each(data, function(index, items) {
				
				html += '<div style="height: auto; padding:40px 0px 60px 0px;">';
			    html += '<span class="h5" style="font-weight: 600"> * ' + items[0].title + '</span>';
				html += '<input type="hidden" class="project_id project_id'+index+'" value="' + items[0].project_id + '">';
			    html += '<table Style="border:1 solid #cacaca; margin-top: 20px; margin-bottom: 20px;" width="100%">';
			    html += '<tr align="center">';
			    html += '<td align="center" class="td_column_check">';
			    html += '<input class="mx-4 check_checkbox allcheck" id="allcheck" type="checkbox">';
			    html += '</td>';
			    html += '<td class="td_column_id">아이디</td>';
			    html += '<td class="td_column_field" width="10%">지원분야</td>';
			    html += '<td class="td_column_email">이메일</td>';
			    html += '<td class="td_column_tech">기술/언어</td>';
			    html += '<td class="td_column_apply">지원사유</td>';
			    html += '</tr>';
			    html += '</table>';
			    html += '<hr class="m-0" />';
			    html += '<div class="div_height_table" style="height:auto;">';
			    html += '<table id="applicantsUserTable" width="100%" style="font-weight: 400; margin-top: 10px; margin-bottom: 10px;">';
			
				    $.each(items, function(index, user) {
				        html += '<tr align="center" height="80px" class="hover_tr">';
				        html += '<td align="center" class="td_column_check">';
				        html += '<input class="mx-4 check_checkbox single_checkbox" type="checkbox" value="' + user.user_id + '">';
				        html += '</td>';
				        html += '<td class="td_column_id">' + user.user_id + '</td>';
				        html += '<td class="td_column_field" width="10%">' + user.app_field + '</td>';	
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
			
			if(data == ''){
			     $('#eachProjectDiv').html('* 프로젝트 지원자가 없습니다.').css({
			        'font-size': '20px',
			        'text-align': 'center'
			    });
			}



		},	

		error: function(err){
			console.log(err);
		}
		
	}); //ajax
	
	
	
	
	$(document).on('change', '.allcheck', function() {
	  var is_check = $(this).is(":checked");
	  console.log(is_check);
	  
	  $(this).parents('table').siblings('div').find('table .check_checkbox').prop('checked', is_check);
	   
	});
	
	
	$(document).on('click', '#accept', function(){
	    
		$('.allcheck').prop('checked', false);  
	    var checkedUser = $('input[type=checkbox]:checked').map(function () {
	        return $(this).val();
	    }).get();
	    	    
	    var project_id =  $('input[type=checkbox]:checked').parent().parent().parent().parent().parent().prev().prev().prev().val();
	    alert(project_id);
	      
		if (checkedUser.length === 0) {
		    alert('선택된 지원자가 없습니다.');
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
				
		$('.allcheck').prop('checked', false);  
	    
	    var checkedUser = $('input[type=checkbox]:checked').map(function () {
	        return $(this).val();
	    }).get();
	    	    
	    var project_id =  $('input[type=checkbox]:checked').parent().parent().parent().parent().parent().prev().prev().prev().val();
	    alert(project_id);
	      
		if (checkedUser.length === 0) {
		    alert('선택된 지원자가 없습니다.');
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
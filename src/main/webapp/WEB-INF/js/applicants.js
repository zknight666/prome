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
			        '<img loading="lazy" src=' + tech_icon + ' alt=' + perItem + ' title=' + perItem + ' width="30px"/><span style="white-space: pre;"> </span>';
			    });
			    return tech_icons;
			}




			
			var html = '';
			$.each(data, function(index, items) {
				html += '<div style="height: auto; padding:0px 0px 16px 0px;">';
			    html += '<span class="h5" style="font-weight: 600"> *' + items[0].title + '</span>';
			    html += '<table Style="border:1 solid #cacaca" width="100%">';
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
			    html += '<table id="applicantsUserTable" width="100%" style="font-weight: 400;">';
			
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
			    html += '<button type="button" class="btn btn-outline-dark px-2 py-1">수락</button>';
			    html += '<button type="button" class="btn btn-outline-dark px-2 py-1 mx-2">거절</button>';
			    html += '</div>';
			    html += '</div>';
			});
			
			$('#eachProjectDiv').html(html);


		},	

		error: function(err){
			console.log(err);
		}
	}); //ajax
});
package user.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
public class UserPaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize; //1페이지에 들어갈 게시물 수
	private int totalA; //총 글수
	private StringBuffer pagingHTML; //or StringBuilder
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalP= (totalA + pageSize-1) / pageSize; //10+(3-1)/3==총 페이지 수는 4개
		//int totalP = (total-1) / pageSize + 1; //총 페이지 수 
		int startPage= (currentPage-1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if(endPage > totalP) endPage = totalP;
		
		pagingHTML.append("<ul class='pagination pagination-lg'>");
		if(startPage != 1)
			pagingHTML			
			.append("<li class='page-item'>")
			.append("<a class='page-link' id='paging' onclick='userPaging(" + (startPage-1) + ")'>&laquo;</a>")
			.append("</li>");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage)
				pagingHTML
				.append("<li class='page-item active'>")
				.append("<a class='page-link' id='currentPaging' onclick='userPaging(" + i + ")'>" + i + "</a>")
				.append("</li>");
			else
				pagingHTML
				.append("<li class='page-item'>")
				.append("<a class='page-link' id='paging' onclick='userPaging(" + i + ")'>" + i + "</span>")
				.append("</li>");
		}
		
		if(endPage < totalP)
			pagingHTML
			.append("<li class='page-item'>")
			.append("<a class='page-link' id='paging' onclick='userPaging(" + (endPage+1) + ")'>&raquo;</a>");	
	}
}

package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

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
		
		if(startPage != 1)
			pagingHTML.append("<span id='paging' onclick='userPaging(" + (startPage-1) + ")'>이전</span>");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage)
				pagingHTML.append("<span id='currentPaging' onclick='userPaging(" + i + ")'>" + i + "</span>");
			else
				pagingHTML.append("<span id='paging' onclick='userPaging(" + i + ")'>" + i + "</span>");
		}
		
		if(endPage < totalP)
			pagingHTML.append("<span id='paging' onclick='userPaging(" + (endPage+1) + ")'>다음</span>");	
	}
}

package board.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor @ToString
@Setter @Getter @AllArgsConstructor
public class PageDTO {
	
	// 검색
	private String criteria;
	private String keyword;	
	
	//페이지나누기
	private int page;   //사용자가 요청한 페이지 번호
	private int amount; //페이지당 보여줄 게시물 수
	
	
	//listForm 하단의 페이지 번호를 만들기 위한 부분
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int total;	
	
	
	public PageDTO(int page, int amount) {
		super();
		this.page = page;
		this.amount = amount;
	}
	
	
	
	

	public PageDTO(String criteria, String keyword, int page, int amount, int total) {
		super();
		this.criteria = criteria;
		this.keyword = keyword;
		this.page = page;
		this.amount = amount;
		this.total = total;
		
		
		//현재 화면의 마지막 페이지 수
		// 3 클릭 => 10 /   13 클릭 => 20
		endPage = (int)(Math.ceil(page / 10.0)) * 10;
		//현재 화면의 시작 페이지 수
		// 1 2 3 4...10 [다음]
		startPage = endPage-9;
		
		// 320 개의 총 게시물일 때 
		int realEnd = (int)(Math.ceil((total/1.0) / amount));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
	}

	public PageDTO(String criteria, String keyword, int page, int amount) {
		super();
		this.criteria = criteria;
		this.keyword = keyword;
		this.page = page;
		this.amount = amount;
	}	
}





package com.kh.batterflow.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

//게시판 페이징을 처리하는 클래스
public class PageMaker_vo {

	private int totalCount; //게시판 전체 데이터 개수
	private int startPage; //시작 페이지 번호
	private int endPage; //끝 페이지 번호
	private boolean prev; //이전 링크
	private boolean next; //다음 링크
	private int displayPageNum = 20; //게시판 화면에서 한번에 보여질 페이지 번호의 개수
	private Criteria_vo criteria_vo;

	public void setCriteria_vo(Criteria_vo criteria_vo) {
		this.criteria_vo = criteria_vo;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	
	public Criteria_vo getCriteria_vo() {
		return criteria_vo;
	}
	 
	private void calcData() {
		endPage = (int) (Math.ceil(criteria_vo.getPage() / (double)displayPageNum) * displayPageNum); //끝페이지 번호 계산
		startPage = (endPage - displayPageNum) + 1; //시작페이지번호=끝퍼에지번호-페이지번호의 갯수 + 1
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)criteria_vo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * criteria_vo.getPerPageNum() >= totalCount ? false : true;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.queryParam("perPageNum", criteria_vo.getPerPageNum())
							.build();
		   
		return uriComponents.toUriString();
	}
	
	
}

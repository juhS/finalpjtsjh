package com.kh.batterflow.vo;

//특정 페이지 조회를 위한 클래스
public class Criteria_vo {

	private int page; //현재 페이지 번호
	private int perPageNum; //페이지당 보여줄 게시글 개수
	private int rowStart; //시작 줄 번호
	private int rowEnd; //끝 줄 번호
	
	public Criteria_vo() { //기본값
		this.page=1;
		this.perPageNum=20;
	}
	
	public void setPage(int page) {
		if(page <=0) {
			this.page=1;
			return;
		}
		this.page=page;
	}
	
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <=0 || perPageNum>1000) {
			this.perPageNum=20;
			return;
		}
	}
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}

	@Override
	public String toString() {
		return "Criteria_vo [page=" + page + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}
	
	
}

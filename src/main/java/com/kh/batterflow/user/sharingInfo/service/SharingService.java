package com.kh.batterflow.user.sharingInfo.service;

import java.util.List;

import com.kh.batterflow.vo.Board_user_vo;
import com.kh.batterflow.vo.Criteria_vo;

public interface SharingService {

	//게시글작성
	public void write(Board_user_vo board_user_vo) throws Exception;
	
	//게시글목록조회
	public List<Board_user_vo> list(Criteria_vo criteria_vo) throws Exception;
	
	//게시물 총 갯수
	public int listCount() throws Exception;
	
	//게시글 목록 상세조회
	public Board_user_vo read(int board_id) throws Exception;
	
	//게시글수정
	public void update(Board_user_vo board_user_vo) throws Exception;
		
	//게시글삭제
	public void delete(int board_id) throws Exception;

	//게시글 검색 : 제목
	public List<Board_user_vo> noticeSearch(String contentSearch) throws Exception;

	//게시글 검색 : 아이디
	//public List<Board_user_vo> noticeIdSearch(String contentSearch) throws Exception;;

	//게시글 리스트 상세 조회2
	//public List<Board_user_vo> list2(String search) throws Exception;
	
	}
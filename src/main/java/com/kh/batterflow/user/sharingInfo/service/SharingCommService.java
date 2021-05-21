package com.kh.batterflow.user.sharingInfo.service;

import java.util.List;

import com.kh.batterflow.vo.Comm_user_vo;

public interface SharingCommService {

	//게시판 댓글 조회
	public List<Comm_user_vo> readComm(int board_id) throws Exception;
	
	//게시판 댓글 작성
	public void writeComm(Comm_user_vo comm_user_vo) throws Exception;
	
	//게시판 댓글 삭제
	public void deleteComm(Comm_user_vo comm_user_vo) throws Exception;

	//게시판 댓글 수정
	//public void updateComm(Comm_user_vo comm_user_vo) throws Exception;
	
}

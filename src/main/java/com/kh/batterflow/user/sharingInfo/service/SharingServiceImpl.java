package com.kh.batterflow.user.sharingInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.user.sharingInfo.dao.SharingInfoDao;
import com.kh.batterflow.vo.Board_user_vo;
import com.kh.batterflow.vo.Criteria_vo;

@Service("sharingServiceImpl")
public class SharingServiceImpl implements SharingService{
	

	@Autowired
	private SharingInfoDao dao;
	
	// 게시글 작성
	@Override
	public void write(Board_user_vo board_user_vo) throws Exception {
		
		//System.out.println("board_user_vo service 제목 : " + board_user_vo.getBoard_title());
		//System.out.println("board_user_vo service 내용 : " + board_user_vo.getBoard_content());
		
		dao.write(board_user_vo);
	}

	//게시글 목록조회
	@Override
	public List<Board_user_vo> list(Criteria_vo criteria_vo) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.list(criteria_vo);
	}
	
	//게시물 총 갯수
	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.listCount();
	}
	
	//게시글 목록 상세 조회
	@Override
	public Board_user_vo read(int board_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(board_id);
	}
	
	//게시글수정
	@Override
	public void update(Board_user_vo board_user_vo) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("board_vo service 제목 수정 : " + board_user_vo.getBoard_title());
		System.out.println("board_vo service 내용 수정 : " + board_user_vo.getBoard_content());
		System.out.println("board_vo service 상단고정 수정 : " + board_user_vo.getTop_fixed());
		
		System.out.println("보드 서비스 업데이트 : " + board_user_vo);
		dao.update(board_user_vo);
		
	}
	//게시글삭제
	@Override
	public void delete(int board_id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(board_id);
	}

	//게시글 검색 : 제목
	@Override
	public List<Board_user_vo> noticeSearch(String contentSearch) throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeSearch(contentSearch);
	}

	//게시글 검색 : 아이디
//	@Override
//	public List<Board_user_vo> noticeIdSearch(String contentSearch) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.noticeIdSearch(contentSearch);
//	}

	//게시글 리스트 상세 조회2
//	@Override
//	public List<Board_user_vo> list2(String search) throws Exception {
//		// TODO Auto-generated method stub
//		
//		return dao.list2(search);
//	}


}

package com.kh.batterflow.user.sharingInfo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Board_user_vo;
import com.kh.batterflow.vo.Criteria_vo;

@Repository
public class SharingInfoDaoImpl implements SharingInfoDao{

	@Autowired
	private SqlSession sqlSession;
	
	//게시글작성
	@Override
	public void write(Board_user_vo board_user_vo) throws Exception {
		
		//System.out.println("board_vo dao 제목 : " + board_user_vo.getBoard_title());
		//System.out.println("board_vo dao 내용 : " + board_user_vo.getBoard_content());
		
		
		sqlSession.insert("sharing.insert",board_user_vo); //sharing : mappernamespace, insert : id
		
	}

	//게시글 목록 조회
	@Override
	public List<Board_user_vo> list(Criteria_vo criteria_vo) throws Exception {
		// TODO Auto-generated method stub
		
		//System.out.println("criteria_vo :" + criteria_vo);
		return sqlSession.selectList("sharing.listPage", criteria_vo);
	}
	
	//게시물 총 개수
	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("sharing.listCount");
	}	
	
	//게시글 목록 상세 조회
	@Override
	public Board_user_vo read(int board_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("sharing.read", board_id);
	}
	
	//게시글수정
	@Override
	public void update(Board_user_vo board_user_vo) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("board_vo dao 수정 제목 : " + board_user_vo.getBoard_title());
		System.out.println("board_vo dao 내용 : " + board_user_vo.getBoard_content());
		System.out.println("vo dao 상단고정 : " + board_user_vo.getTop_fixed());
		
		System.out.println("업데이트 dao : " + board_user_vo);
		sqlSession.update("sharing.update", board_user_vo);
		
	}

	//게시글삭제
	@Override
	public void delete(int board_id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("sharing.delete",board_id);
		
	}

	//게시글검색 : 제목
	@Override
	public List<Board_user_vo> noticeSearch(String contentSearch) {
		// TODO Auto-generated method stub
		List<Board_user_vo> noticeSearch = sqlSession.selectList("sharing.noticeSearch",contentSearch);
		return noticeSearch;
	}

	//게시글검색 : 아이디
//	@Override
//	public List<Board_user_vo> noticeIdSearch(String contentSearch) {
//		// TODO Auto-generated method stub
//		
//		List<Board_user_vo> noticeIdSearch = sqlSession.selectList("sharing.noticeIdSearch",contentSearch);
//		return noticeIdSearch;
//
//	}
//	
	//게시글 리스트 상세 조회2
//	@Override
//	public List<Board_user_vo> list2(String search) {
//		// TODO Auto-generated method stub
//		
//		return sqlSession.selectList("sharing.search", search);
//	}


}

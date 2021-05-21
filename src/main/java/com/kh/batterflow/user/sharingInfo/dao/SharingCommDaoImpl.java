package com.kh.batterflow.user.sharingInfo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Comm_user_vo;

@Repository
public class SharingCommDaoImpl implements SharingCommDao {

	@Autowired
	private SqlSession sqlSession;

	
	 //게시판 댓글 조회
	 
	 @Override public List<Comm_user_vo> readComm(int board_id) throws Exception {
	 // TODO Auto-generated method stub return
		 //System.out.println("dao : " + board_id);
		 
	  List<Comm_user_vo> vo = sqlSession.selectList("sharingComm.readComm",board_id);	
	  	//System.out.println("dao vo : " + vo);
	  return sqlSession.selectList("sharingComm.readComm", board_id); 
	 }

	//게시판 댓글 작성
	@Override
	public void writeComm(Comm_user_vo comm_user_vo) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("dao : " + comm_user_vo);
		sqlSession.insert("sharingComm.writeComm", comm_user_vo);
		
	}

	//게시판 댓글 삭제
	@Override
	public void deleteComm(Comm_user_vo comm_user_vo) throws Exception {
		//System.out.println("삭제 dao : " + comm_user_vo);
		// TODO Auto-generated method stub
		sqlSession.delete("sharingComm.deleteComm", comm_user_vo);
		
	}

	//게시판 댓글 수정
//	@Override
//	public void updateComm(Comm_user_vo comm_user_vo) throws Exception {
//		// TODO Auto-generated method stub
//		sqlSession.update("sharingComm.updateComm", comm_user_vo);
//	}
	

}

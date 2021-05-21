package com.kh.batterflow.user.sharingInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.user.sharingInfo.dao.SharingCommDao;
import com.kh.batterflow.vo.Comm_user_vo;
@Service
public class SharingCommServiceImpl implements SharingCommService{
	
	@Autowired 
	private SharingCommDao sharingCommDao;
	
	 //게시판 댓글 조회
	 @Override 
	 public List<Comm_user_vo> readComm(int board_id) throws Exception {
	 // TODO Auto-generated method stub return sharingCommDao.readComm(board_id);
		 
		//System.out.println("readComm 서비스 : " +board_id);
		 return sharingCommDao.readComm(board_id);
	 }

	//게시판 댓글 작성
	@Override
	public void writeComm(Comm_user_vo comm_user_vo) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("서비스 : " + comm_user_vo);
		sharingCommDao.writeComm(comm_user_vo);
		
	}
	
	//게시판 댓글 삭제
	@Override
	public void deleteComm(Comm_user_vo comm_user_vo) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("삭제 서비스 : " + comm_user_vo);
		sharingCommDao.deleteComm(comm_user_vo);
		
	}

	//게시판 댓글 수정
//	@Override
//	public void updateComm(Comm_user_vo comm_user_vo) throws Exception {
//		// TODO Auto-generated method stub
//		sharingCommDao.updateComm(comm_user_vo);
//		
//	}
	

}

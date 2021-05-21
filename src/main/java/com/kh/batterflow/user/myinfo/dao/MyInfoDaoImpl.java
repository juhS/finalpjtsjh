package com.kh.batterflow.user.myinfo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.VacationInfo_vo;
import com.kh.batterflow.vo.VacationType_vo;

@Repository
public class MyInfoDaoImpl implements MyInfoDao{
	
	@Autowired
	private SqlSession sqlSession;

	//휴가종류 불러오기(selectBox)
	@Override
	public List<VacationType_vo> vacationTypeList() {
		// TODO Auto-generated method stub
		List<VacationType_vo> vacationTypeList = sqlSession.selectList("vacationType.vacationTypeList");
		
		return vacationTypeList;
	}


	//휴가내역 : 휴가일수부여내역 list조회
//	@Override
//	public List<VacationInfo_vo> apprList(int user_id) throws Exception {
//		// TODO Auto-generated method stub
//		return sqlSession.selectList("vacationType.apprList");
//	}
	
	//휴가내역 : 휴가일수부여내역 list조회
	@Override
	public List<VacationInfo_vo> apprList(int user_id) throws Exception {
		 //TODO Auto-generated method stub
		//System.out.println("dao임플");
		//System.out.println(".apprList user_id : " +user_id);
		return sqlSession.selectList("vacationInfo.apprList", user_id);
	}

	//휴가내역 : 휴가일수차감내역 list조회
	@Override
	public List<VacationInfo_vo> apprMList(int user_id) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("dao임플");
		//System.out.println(".apprMList user_id : " +user_id);
		return sqlSession.selectList("vacationInfo.apprMList", user_id);
	}

}

package com.kh.batterflow.admin.vacationManagement.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.VacationInfo_vo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class VacationHistoryDaolmpl implements VacationHistoryDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	//회원의 정보를 List로 받아옴
	@Override
	public List<UserClient_vo> user_list() {
		
		
		
		List<UserClient_vo> list = sqlSession.selectList("vacation.list");
		log.info("result : ", list);
		System.out.println("user_list" + list);
		
		
		
		
		return list;
	}

	@Override
	public List<VacationInfo_vo> vacation_list() {
		List<VacationInfo_vo> list2 = sqlSession.selectList("vacation.list2");
		log.info("result : ", list2);
		System.out.println("vacation_list" + list2);
		
		return list2;
	}
	
}

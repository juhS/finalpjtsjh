package com.kh.batterflow.admin.workerManagement.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.WeeklyWork_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class WeeklyWorkDaoImpl implements WeeklyWorkDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertWeeklyWork(WeeklyWork_vo weeklyWork) {

//		sqlSession.insert("weeklyWork.insert", weeklyWork);
		
	}

	@Override
	public void insertWeeklyWork(int aday, int aweek, int extrawork) {
//		
//	 Map <String , Object> workTime = new HashMap();
//	 workTime.put("aday", aday);
//	 workTime.put("aweek", aweek);
//	 workTime.put("extrawork", extrawork);
	 
	 

	
	}

	@Override
	public void insertWeeklyWork(List<String> check) {
		
		

		sqlSession.insert("weeklyWork.insert", check);
	}

}

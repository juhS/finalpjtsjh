package com.kh.batterflow.admin.workerManagement.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.WeeklyTime_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class WeeklyTimeDaoImpl implements WeeklyTimeDao {
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public void insertWeeklyTime(List<String> check) {
		
//		sqlSession.insert("weeklyTime.insert", check);
		
	}

	@Override
	public void insertWeeklyTime(WeeklyTime_vo weeklyTime) {
		
		
			sqlSession.insert("weeklyTime.insert", weeklyTime);
	}

}

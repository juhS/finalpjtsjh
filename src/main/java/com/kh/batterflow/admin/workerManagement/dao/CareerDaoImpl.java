package com.kh.batterflow.admin.workerManagement.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Career_vo;
import com.kh.batterflow.vo.Dept_vo;

@Repository 
public class CareerDaoImpl implements CareerDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void organizationStructor(Career_vo career_vo) {
		// TODO Auto-generated method stub
		
		sqlSession.insert("career.add", career_vo);
		
	}


	
}

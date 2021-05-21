package com.kh.batterflow.admin.organizationStructor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Dept_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class DeptDaoImpl implements DeptDao{
	 
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertDept(Dept_vo dept_vo) {

		sqlSession.insert("deptList.insert", dept_vo);
		
	}

	@Override
	public List<Dept_vo> deptList() {

		List<Dept_vo> deptList = sqlSession.selectList("deptList.list_name");
		
		
		return deptList;
	}

	@Override
	public void removeDept(Dept_vo dept_vo) {

		sqlSession.delete("deptList.remove_job", dept_vo);
	}

	@Override
	public List<Dept_vo> deptList_tb() {
		
		List<Dept_vo> deptList = sqlSession.selectList("deptList.list_td");
		
		return deptList;
	}
	
	

}

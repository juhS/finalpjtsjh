package com.kh.batterflow.admin.workerManagement.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class EmployTypeDaoImpl implements EmployTypeDao{
	
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public void addEmpType(EmployType employType) {

		//이거는 한개만 insert를 한거임 
		sqlSession.insert("employType.insert" , employType);
		
	}


	@Override
	public List<EmployType> empTypeList() {
		
		List<EmployType> empList = sqlSession.selectList("employType.list");

		System.out.println("고용형태 목록 : " + empList);
		return empList;
		
	}


	@Override
	public int removeEmpType(int emp_type_id) {

		int empNum = sqlSession.delete("employType.remove_emp", emp_type_id); 
		
		return empNum;
		
	}


//	@Override
//	public List<EmployType> empTypeListPage() {
//		// TODO Auto-generated method stub
//		List<EmployType> empListPage = sqlSession.selectList("employType.listPage");
//		
//		return empListPage;
//	}
//
//
//	@Override
//	public List<EmployType> empTypeListPage(EmployType employType) {
//		// TODO Auto-generated method stub
//		return null;
//	}


	@Override
	public List<UserClient_vo> empTypeListPage(UserClient_vo userClient) {

		List<UserClient_vo> userClient1 = sqlSession.selectList("employType.listPage", userClient);
		return userClient1;
	}


	@Override
	public List<EmployType> empTypeListPage(EmployType employType) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}

package com.kh.batterflow.admin.organizationStructor.service;

import java.util.List;

import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;

public interface OrganizationStructorService {

	//insert 
	List<Dept_vo> insertDept(Dept_vo dept_vo);

  
	//삭제 	
	List<Dept_vo> removeDept(Dept_vo dept_vo);
	
	
	List<Dept_vo> selectList(Dept_vo dept_vo);

	List<Job> selectList(Job job);

	List<EmployType> selectList(EmployType employType);

	//userClient_vo 
	List<UserClient_vo> insertUserClient(UserClient_vo userClient);


	List<Authority_vo> selectList(Authority_vo authority_vo);

	
	List<UserClient_vo> selectList(UserClient_vo userClient);

	//table list 삭제 
	List<UserClient_vo> deleteUserClient(UserClient_vo userClient);

	//search 
	List<UserClient_vo> searchUserClient(UserClient_vo userClient);

	//list뿌려주는거 	
	List<UserClient_vo> selectListPage(UserClient_vo userClient);


	

	

}

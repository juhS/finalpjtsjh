package com.kh.batterflow.admin.personnelDepartment.service;

import java.util.List;

import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.UserClient_vo;

public interface PersonnelDepartmentService {

	//조직도 리스트 	
	List<Dept_vo> selectList(Dept_vo dept_vo);
	//userClient리스트 	
	List<UserClient_vo> selectList(UserClient_vo userClient_vo);
	
	//이메일 
	List<UserClient_vo> editEmail(UserClient_vo userClient);
 
}
  
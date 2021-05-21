package com.kh.batterflow.admin.workerManagement.dao;


import java.util.List;

import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.UserClient_vo;

public interface EmployTypeDao {

	//emp_type_name
	void addEmpType(EmployType employType);
	//emp_type_list
	List<EmployType> empTypeList();
	//emp_type_id (지울꺼)	
	int removeEmpType(int emp_type_id);
	
	//emp_type_id LIST
	
	List<EmployType> empTypeListPage(EmployType employType);
	List<UserClient_vo> empTypeListPage(UserClient_vo userClient);



}

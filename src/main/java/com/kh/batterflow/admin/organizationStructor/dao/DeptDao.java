package com.kh.batterflow.admin.organizationStructor.dao;

import java.util.List;

import com.kh.batterflow.vo.Dept_vo;

public interface DeptDao {
 
	void insertDept(Dept_vo dept_vo);

	List<Dept_vo> deptList();

	//삭제 	
	void removeDept(Dept_vo dept_vo);

	
	List<Dept_vo> deptList_tb();

}

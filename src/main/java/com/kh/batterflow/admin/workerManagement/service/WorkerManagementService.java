package com.kh.batterflow.admin.workerManagement.service;

import java.util.List;

import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Career_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.WeeklyTime_vo;
import com.kh.batterflow.vo.WeeklyWork_vo;

public interface WorkerManagementService {

	

	//반환형 등록 기능 	
	//조직원 추가 등록 , 등록이여서 void로 
	void organizationStructor(UserClient_vo userClient_vo, Dept_vo dept_vo, Career_vo career_vo,
			Authority_vo authority_vo);

	//부서
	List<Job> addJobPosition(Job job);

	//delete 자료형이 
	List<Job> removeJobPosition(int dept_id);

	//고용형태 insert	
	List<EmployType> addEmpType(EmployType employType);

	
	List<Job> selectList(Job job);

	List<EmployType> selectEmpList(EmployType employType);

	//delete 고용형태 	
	List<EmployType> removeEmpType(int emp_type_id);

	void insertWorkStandard(WeeklyTime_vo weeklyTime, WeeklyWork_vo weeklyWork);

	void insertWorkStandart(int aday, int aweek, int extrawork, List<String> check);

	void insertWorkStandart(WeeklyTime_vo weeklyTime);

	

	 



}

package com.kh.batterflow.admin.workerManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.batterflow.admin.workerManagement.dao.CareerDao;

import com.kh.batterflow.admin.workerManagement.dao.EmployTypeDao;
import com.kh.batterflow.admin.workerManagement.dao.JobDao;
import com.kh.batterflow.admin.workerManagement.dao.WeeklyTimeDao;
import com.kh.batterflow.admin.workerManagement.dao.WeeklyWorkDao;
import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Career_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.WeeklyTime_vo;
import com.kh.batterflow.vo.WeeklyWork_vo;

@Service
public class WorkerManagementServiceImpl implements WorkerManagementService{
	
	
	
//	@Autowired	
//	private DeptDao deptDao;xw
//	
	@Autowired
	private CareerDao careerDao;
//	
	
	
	@Autowired
	private EmployTypeDao empTypeDao;
	
	@Autowired
	private JobDao jobDao;
	
	@Autowired
	private WeeklyTimeDao weeklyTimeDao;
	@Autowired
	private WeeklyWorkDao weeklyWorkDao;
	


	
//	//조직원추가 	
//	@Override
//	public void organizationStructor(UserClient_vo userClient_vo, Dept_vo dept_vo, Career_vo career_vo,
//			Authority_vo authority_vo) {
//		 
//		
//		userClientDao.organizationStructor(userClient_vo);
////		xxx
//		careerDao.organizationStructor(career_vo);
//		authorityDao.organizationStructor(authority_vo);
		
		
		
//	}

	//
	//인사항목 insert 
	@Override
	public List<Job> addJobPosition(Job job) {

		jobDao.addJobposition(job);
		
		List<Job> jobList = jobDao.jobList();
		System.out.println("ddddd" + jobList);
		
			return jobList;
			
			
	}

	@Override
	public List<Job> removeJobPosition(int job_id) {
		//이거는 뺄 숫자이고 28번 한개인경우 
		int jobNum = jobDao.removeJobPosition(job_id);
		
		//이거는 다시 뷰페이지로 보여줘야하기때문에 List로 가져와서 뿌려줄꺼여서 이미있는 메서드 등록해주면됨 	
		List<Job> jobList = jobDao.jobList();
		
		
		return jobList;
	}
	
	@Override
	public List<Job> selectList(Job job) {
		List<Job> jobList = jobDao.jobList();
		
		return jobList;
	}

	
	@Override
	public List<EmployType> addEmpType(EmployType employType) {

		
		empTypeDao.addEmpType(employType);
		
		List<EmployType> empList = empTypeDao.empTypeList();
		
		
		
		return empList;
	}

	

	@Override
	public List<EmployType> selectEmpList(EmployType employType) {
		
		List<EmployType> empList = empTypeDao.empTypeList();
		
		return empList;
	}

	@Override
	public List<EmployType> removeEmpType(int emp_type_id) {

		int empNum = empTypeDao.removeEmpType(emp_type_id); 
		
		
		List<EmployType> empList = empTypeDao.empTypeList();
		
		return empList;
	}

	@Override
	public void organizationStructor(UserClient_vo userClient_vo, Dept_vo dept_vo, Career_vo career_vo,
			Authority_vo authority_vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertWorkStandard(WeeklyTime_vo weeklyTime, WeeklyWork_vo weeklyWork) {
		
		weeklyWorkDao.insertWeeklyWork(weeklyWork);
		weeklyTimeDao.insertWeeklyTime(weeklyTime);
		
		
	}

	@Override
	public void insertWorkStandart(int aday, int aweek, int extrawork, List<String> check) {
		
		weeklyWorkDao.insertWeeklyWork(check);
		
		//클래스롤 생성 
		WeeklyTime_vo weeklyTime = WeeklyTime_vo.builder().aday(aday).aweek(aweek).extrawork(extrawork)
				.build();
		
		weeklyTimeDao.insertWeeklyTime(weeklyTime);
		
	}

	@Override
	public void insertWorkStandart(WeeklyTime_vo weeklyTime) {

		weeklyTimeDao.insertWeeklyTime(weeklyTime);
	}


	

	
}

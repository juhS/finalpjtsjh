package com.kh.batterflow.admin.organizationStructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.admin.organizationStructor.dao.AuthorityDao;
import com.kh.batterflow.admin.organizationStructor.dao.DeptDao;
import com.kh.batterflow.admin.workerManagement.dao.EmployTypeDao;
import com.kh.batterflow.admin.workerManagement.dao.JobDao;
import com.kh.batterflow.admin.organizationStructor.dao.UserClientDao;
import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;

@Service
public class OrganizationStructorServiceImpl implements OrganizationStructorService {
	
	@Autowired
	private DeptDao deptDao;
	
	@Autowired 
	private JobDao jobDao;
	
	@Autowired
	private EmployTypeDao empTypeDao;
	
	@Autowired
	private UserClientDao userClientDao;
	
	@Autowired
	private AuthorityDao authorityDao;
	
	
	

	@Override
	public List<Dept_vo> insertDept(Dept_vo dept_vo) {
		
		deptDao.insertDept(dept_vo);
		
		
		List<Dept_vo> deptList = deptDao.deptList();
		
		
		return deptList;
	}

	@Override
	public List<Dept_vo> selectList(Dept_vo dept_vo) {
		
		List<Dept_vo> deptList = deptDao.deptList();;
		
		return deptList;
	}

	@Override
	public List<Dept_vo> removeDept(Dept_vo dept_vo) {

		deptDao.removeDept(dept_vo);
		
		List<Dept_vo> deptList = deptDao.deptList();
		
		return deptList;
	}

	@Override
	public List<Job> selectList(Job job) {

		List<Job>jobList = jobDao.jobList();
		
		return jobList;
	}

	@Override
	public List<EmployType> selectList(EmployType employType) {

		List<EmployType>empList = empTypeDao.empTypeList();
		return empList;
	}


	@Override
	public List<Authority_vo> selectList(Authority_vo authority_vo) {
		
		

		List<Authority_vo> authorityList = authorityDao.authorityList();
		
		
		return authorityList;
	}

	//userClient list 
	@Override
	public List<UserClient_vo> insertUserClient(UserClient_vo userClient) {
		
		//insert 먼저 	
		userClientDao.insertUserClient(userClient);
		
		List<UserClient_vo> userClientList = userClientDao.selectUserClient(userClient);
		
		return userClientList;
	}

	@Override
	public List<UserClient_vo> selectList(UserClient_vo userClient) {
		
		List<UserClient_vo> userClientList = userClientDao.selectUserClient(userClient);
		 
		return userClientList;
	}
  
	@Override
	public List<UserClient_vo> deleteUserClient(UserClient_vo userClient) {

		userClientDao.deleteList(userClient);
		
		List<UserClient_vo> userClientList = userClientDao.selectUserClient(userClient);
		
		
		return userClientList;
	}

	@Override
	public List<UserClient_vo> searchUserClient(UserClient_vo userClient) {

		List<UserClient_vo> searchUserClient = userClientDao.searchUserClient(userClient);
		
		return searchUserClient;
	}

	@Override
	public List<UserClient_vo> selectListPage(UserClient_vo userClient) {

		List<UserClient_vo>empListPage = empTypeDao.empTypeListPage(userClient);
		
		return empListPage;
	}

	


	
}

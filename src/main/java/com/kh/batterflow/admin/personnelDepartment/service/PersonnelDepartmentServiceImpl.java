package com.kh.batterflow.admin.personnelDepartment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.admin.organizationStructor.dao.DeptDao;
import com.kh.batterflow.admin.organizationStructor.dao.UserClientDao;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.UserClient_vo;

@Service
public class PersonnelDepartmentServiceImpl implements PersonnelDepartmentService {

	
	@Autowired
	private DeptDao deptDao;
	
	@Autowired
	private UserClientDao userClientDao;
	
	
	
	@Override
	public List<Dept_vo> selectList(Dept_vo dept_vo) {

		List<Dept_vo> deptList = deptDao.deptList();
		
		return deptList;
	}
  

	@Override
	public List<UserClient_vo> selectList(UserClient_vo userClient_vo) {

		List<UserClient_vo>userClientList = userClientDao.selectUserClient_tb(userClient_vo);
		
		return userClientList;
	}


	@Override
	public List<UserClient_vo> editEmail(UserClient_vo userClient) {
		
		System.out.println("여기기ㅣㄱ :" + userClient);

		List<UserClient_vo> userClientEmail = userClientDao.editEmail(userClient);
		
		return userClientEmail;
	}

}

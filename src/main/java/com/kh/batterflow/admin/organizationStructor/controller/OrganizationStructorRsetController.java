package com.kh.batterflow.admin.organizationStructor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.admin.organizationStructor.service.OrganizationStructorService;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/organizationStructor")
public class OrganizationStructorRsetController {
	
	@Autowired
	private OrganizationStructorService organizationStructorService;

	@PostMapping("/addDept")
	public List<Dept_vo> insertDept (@ModelAttribute Dept_vo dept_vo){
		
		System.out.println("지금 볼라는 거  : " + dept_vo);
		
		List<Dept_vo> deptList = organizationStructorService.insertDept(dept_vo);
		
		
		
		return deptList;
		
		
	}
	
	@PostMapping("/removeDept")
	public List<Dept_vo> removeDept(@ModelAttribute Dept_vo dept_vo){
		
		System.out.println("나와라 그래야 맘편히 자지:" + dept_vo);
		
		List<Dept_vo> removeDept = organizationStructorService.removeDept(dept_vo);
		
		return removeDept;
	}
	
	@PostMapping("/insertUserClient")
	public List<UserClient_vo> insertUserClient (@ModelAttribute UserClient_vo userClient){
		
		System.out.println("머리매우아픔 : " + userClient);
		
		List<UserClient_vo> userClientList = organizationStructorService.insertUserClient(userClient);
		
		return userClientList;
	}
	
	@PostMapping("/deleteUserClientList")
	public List<UserClient_vo> deleteUserClient (@ModelAttribute UserClient_vo userClient){
	
	System.out.println("이거 제발 나와줘라라라라 : " + userClient);
	
	List<UserClient_vo> userClientList = organizationStructorService.deleteUserClient(userClient);
	
	return userClientList;  

	}
	
	//search 
	@PostMapping("/searchUserClient")
	public List<UserClient_vo> searchUserClient (@ModelAttribute UserClient_vo userClient){
		
		List<UserClient_vo> searchUserClient = organizationStructorService.searchUserClient(userClient);
			
			return searchUserClient;
		

	
	}
			
	@PostMapping("/selectListPage")
	public List<UserClient_vo> selectListPage (@ModelAttribute UserClient_vo userClient){
		
		System.out.println("ㄲㄱ ㄱ ㄱ ㄱ ㄱ ㄱ : " + userClient);
		
		List<UserClient_vo> selectListPage = organizationStructorService.selectListPage(userClient);
		
		return selectListPage;
		
	}
		
		
	
	
	
	
}

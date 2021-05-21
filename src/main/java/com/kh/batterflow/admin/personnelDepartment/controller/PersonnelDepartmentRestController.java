package com.kh.batterflow.admin.personnelDepartment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.batterflow.admin.organizationStructor.controller.OrganizationStructorController;
import com.kh.batterflow.admin.personnelDepartment.service.PersonnelDepartmentService;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/personnelDepartment")
public class PersonnelDepartmentRestController {
	
	@Autowired
	private PersonnelDepartmentService personnelDepartmentService;
	
	
	@PostMapping("/editEmail")
	public List<UserClient_vo> editEmail (@ModelAttribute UserClient_vo userClient){
		
		System.out.println("자 봅시다 : " + userClient);
		
		List<UserClient_vo> userClientEmail = personnelDepartmentService.editEmail(userClient);
		  
		return userClientEmail;
	}
	
	
	

}

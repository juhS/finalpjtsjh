package com.kh.batterflow.admin.personnelDepartment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.batterflow.admin.organizationStructor.controller.OrganizationStructorController;
import com.kh.batterflow.admin.personnelDepartment.service.PersonnelDepartmentService;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/personnelDepartment")
public class PersonnelDepartmentController {
	
	@Autowired
	private PersonnelDepartmentService personnelDepartmentService;
	
	@GetMapping("/personnelDepartment")
	public String personnelDepartment(Model model, @ModelAttribute Dept_vo dept_vo, UserClient_vo userClient_vo) {
		
		List<Dept_vo>deptList = personnelDepartmentService.selectList(dept_vo);
		model.addAttribute("deptList", deptList);
		
		System.out.println("나와????? : " + deptList);
		
		List<UserClient_vo> userClientList = personnelDepartmentService.selectList(userClient_vo);
		model.addAttribute("userClientList", userClientList);
		
		  
		
		
		
		
		return "admin/workerManagement/personnelDepartment";
		
		
	}
	
	

}

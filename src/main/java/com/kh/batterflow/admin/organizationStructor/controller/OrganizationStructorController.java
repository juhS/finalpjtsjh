package com.kh.batterflow.admin.organizationStructor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.batterflow.admin.organizationStructor.service.OrganizationStructorService;
import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Career_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/organizationStructor")
public class OrganizationStructorController {
	   
	@Autowired
	private OrganizationStructorService organizationStructorService;
	
	// 조직도/조직원관리 페이지
			@GetMapping("/organizationStructor")
			public String organizationStructor(Model model, @ModelAttribute Dept_vo dept_vo, Job job, EmployType employType, Authority_vo authority_vo, UserClient_vo userClient ) {
				
				List<Dept_vo>deptList = organizationStructorService.selectList(dept_vo);
				model.addAttribute("deptList", deptList);
			
				System.out.println("지금 확이니이 :" + deptList);
				
				List<Job>jobList = organizationStructorService.selectList(job);
				model.addAttribute("jobList", jobList);
				
				List<EmployType>empList = organizationStructorService.selectList(employType);
				model.addAttribute("empList", empList);
				
				List<Authority_vo>authorityList = organizationStructorService.selectList(authority_vo);
				model.addAttribute("authorityList",	authorityList);
				
				List<UserClient_vo>userClientList = organizationStructorService.selectList(userClient);
				model.addAttribute("userClientList", userClientList);
				
				System.out.println("이거거거거 :" + userClientList.toString());
				
//				List<EmployType> selectListPage = organizationStructorService.selectList(employType);
//				model.addAttribute("selectListPage", selectListPage);
				
				//회원목록을 list로 단일조회 
				
				
				
				

				// 사용자에게 보여줄 등록페이지주소, String 형태로 경로를 알려주면됨 (jsp)
				return "admin/workerManagement/organizationStructor";
			}

}

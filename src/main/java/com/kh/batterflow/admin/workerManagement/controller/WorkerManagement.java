package com.kh.batterflow.admin.workerManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.batterflow.admin.workerManagement.service.WorkerManagementService;
import com.kh.batterflow.vo.Authority_vo;
import com.kh.batterflow.vo.Career_vo;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.WeeklyWork_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/workerManagement")
public class WorkerManagement {

	@Autowired
	private WorkerManagementService workerManagementService;

	//mode; 
	// 인사설정
	@GetMapping("/workingSetting")
	public String workingSetting(Model model, @ModelAttribute Job job, EmployType employType, WeeklyWork_vo weeklyWork ) {
		
		List<Job> jobList = workerManagementService.selectList(job);
		model.addAttribute("jobList", jobList); //이름 변수 
		
		List<EmployType>empList = workerManagementService.selectEmpList(employType);
		model.addAttribute("empList", empList);

		 
		
		
		return "admin/workerManagement/workingSetting";
	}

	// 인사항목설정 insert
	@GetMapping("/addJobPosition")
	public String addJobPosition(Model model, @ModelAttribute Dept_vo dept_vo) {


		return "admin/workerManagement/workingSetting";
	}

	@GetMapping("/addEmpType")
	public String empType(Model model, @ModelAttribute EmployType employType) {

		List<EmployType> empList = workerManagementService.selectEmpList(employType);
		model.addAttribute("empList", empList);

		return "admin/workerManagement/workingSetting";
	}

	// 인사정보관리
	@GetMapping("/personnelDepartment")
	public String personnelDepartment() {
		return "admin/workerManagement/personnelDepartment";

	}
	
	
	
	
}

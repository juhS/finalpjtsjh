package com.kh.batterflow.admin.workerManagement.controller;




import java.sql.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.admin.workerManagement.service.WorkerManagementService;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.EmployType;
import com.kh.batterflow.vo.Job;
import com.kh.batterflow.vo.WeeklyTime_vo;
import com.kh.batterflow.vo.WeeklyWork_vo;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/workerManagement")
public class WorkerManagement_controller_rest {

	@Autowired
	private WorkerManagementService workerManagementService;
	
	
	
	@PostMapping("/addJobPosition")
	public List<Job> addJobPosition(@ModelAttribute Job job,Model model) {
		
		 
		List<Job> jobList =  workerManagementService.addJobPosition(job);
		model.addAttribute("deptList", jobList);
		
		log.info("이거무엇 : " + jobList);
		return jobList;
		
		
	}
	
	//파라미터가 있어야 부를 수 있는데 주소에 파라미터가 없습니다 사장님ㅋㅋㅋㅋㅋ
	//여기 Mapping 주소가 다를경우 Completed 405 METHOD_NOT_ALLOWED
	//ajax는 PostMapping 
	@PostMapping("/removeJobPosition")
	public List<Job> remove(@RequestParam int job_id) { //번호로 requestParam int no 
		//자료형을 잘 생각해ㅇ봐야함 view페이지에 뿌려줘야하니깐 글면 List<Dept_vo>
		
		
			System.out.println("너의 순서는 어디니 : " + job_id);
		
		
		//그렇다 id값만 넘겨주면되는것이다	
		List<Job> jobNum = workerManagementService.removeJobPosition(job_id);
		 log.info("제봘~~~~~~~ :"+ jobNum);
		
		return jobNum;
	}
	
	//고용형태항목 추가 	
	@PostMapping("/addEmpType")
	public List<EmployType> addEmpType (@ModelAttribute EmployType employType){
		
		List<EmployType> empList = workerManagementService.addEmpType(employType);
		
		return empList;
	}
	
	//고용형태항목 삭제 
	@PostMapping("/removeEmpType")
	public List<EmployType> removeEmpType (@RequestParam int emp_type_id){
		
		System.out.println("너 들어오니 ?? : " + emp_type_id);
		
		List<EmployType> empNum = workerManagementService.removeEmpType(emp_type_id);
		
		
		
		return empNum;
		
		
	}
	

	
	@PostMapping("/insertWorkingStandard")
	public void insertWorkStandard(@ModelAttribute WeeklyTime_vo weeklyTime){
//		@RequestParam int aday,  @RequestParam int aweek, @RequestParam int extrawork, @RequestParam(value="check[]", required=false) List<String> check
//		System.out.println("컨트롤러 체크 값 : " + check);

		

		workerManagementService.insertWorkStandart(weeklyTime);
		
		
	}
	
	@PostMapping("/insertWorkingdayStandard")
	public void insertWorkingdayStandard(@RequestParam(value="check[]", required=false) List<String> check) {
		
		System.out.println("체크값 : " + check );
	}
	

	
}








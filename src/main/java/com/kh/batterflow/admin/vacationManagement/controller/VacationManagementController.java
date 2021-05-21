package com.kh.batterflow.admin.vacationManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.batterflow.admin.vacationManagement.service.VacationHistoryService;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.VacationInfo_vo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/vacationManagement")
public class VacationManagementController {
	
	@Autowired
	VacationHistoryService vacationhistoryService;
	
	
	
	@GetMapping("/vacationType")
	public String vacationTypeManagement() {
		
		return "admin/vacationManagement/vacationTypeManagement";
	}
	
	
	
	
	
	@GetMapping("vacationHistoryUserlist")
	public String vacationUserlist(Model model) {
		
		
		List<UserClient_vo> user_list = vacationhistoryService.getuserlist();
		List<VacationInfo_vo> vacation_list = vacationhistoryService.getvacationlist();
		System.out.println(user_list);
		System.out.println(vacation_list);
		
		model.addAttribute("user_list", user_list);
		model.addAttribute("vacation_list", vacation_list);
		System.out.println("값이 나온다");
		
		
		
		
		
		
		
		return "admin/vacationManagement/vacationHistoryManagement";
	}
	
	
	
	
}

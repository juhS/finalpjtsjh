package com.kh.batterflow.myInfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myInfo")
public class myInfoController {

	@GetMapping("myPersonnelInfo")
	public String myPersonnelInfo() {
			return "user/myInfo/myPersonnelInfo";
	}
	
	@GetMapping("myVacationInfo")
	public String myVacationInfo() {
			return "user/myInfo/myVacationInfo";
	}
}

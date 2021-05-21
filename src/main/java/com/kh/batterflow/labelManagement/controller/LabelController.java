package com.kh.batterflow.labelManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/labelManagement")
public class LabelController {

	@GetMapping("/labelManagement")
	public String labelManagement() {
			return "user/labelManagement/labelManagement";
	}
	
	@GetMapping("/labelSort")
	public String labelSort() {
			return "user/labelManagement/labelSort";
	}
	
	@GetMapping("/labelAddition")
	public String labelAddition() {
			return "user/labelManagement/labelAddition";
	}
}

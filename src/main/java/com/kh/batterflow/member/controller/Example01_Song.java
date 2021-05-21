package com.kh.batterflow.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class Example01_Song {

	@GetMapping("user")
	public String home() {
		return "user/paperManagement/myPaperManagement";
	}
	
	@GetMapping("process")
	public String first_processPage() {
		return "user/paperManagement/myProcessManagement";
	}
	
	
	
	@GetMapping("inte")
	public String asasas() {
		return "admin/integrationSearch/integrationSearchMain";
	}
	
	@GetMapping("common_info")
	public String asaasas() {
		return "common/modal_document_info";
	}
}

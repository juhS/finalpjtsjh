package com.kh.batterflow.admin.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.batterflow.admin.service.AdminService;
import com.kh.batterflow.vo.Custom_draftTemplate_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/recommend")
	public String sharedDocuRegist(Model model) {
		  List<DocuCategory_vo> docuCategory = adminService.docuCategoryAll();
		  List<DraftFile_vo> draftFile = adminService.draftFileAll();
		  
		  model.addAttribute("docuCategory",docuCategory);
		  model.addAttribute("draftFile",draftFile);
		 
		return "admin/sharedDocuManage/sharedDocuRegist";
	}
	
	@GetMapping("/manage")
	public String sharedDocuManage(Model model) {
		List<DocuCategory_vo> docuCategory = adminService.docuCategoryAllNew();
		List<DraftFile_vo> draftFile = adminService.draftFileAllNew();
		model.addAttribute("docuCategory",docuCategory);
		model.addAttribute("draftFile", draftFile);
		log.info("docuCategory : {}", docuCategory);
		
		
		return "admin/sharedDocuManage/sharedDocuManage";
	}
	
	@GetMapping("/process")
	public String sharedProcessManage() {
		
		return "admin/sharedDocuManage/sharedProcessManage";
	}
	
	@GetMapping("/template")
	public String docuTemplateSelect(@RequestParam String draft_id, Model model) throws ParseException {
		Custom_draftTemplate_vo result = adminService.docuTemplateSelect(draft_id);
		log.info("result : {}", result);
		model.addAttribute("docuTemplate", result);
		return "admin/sharedDocuManage/sharedTemplate";
	}
}

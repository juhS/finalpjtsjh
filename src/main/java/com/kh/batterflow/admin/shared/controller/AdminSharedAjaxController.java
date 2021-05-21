package com.kh.batterflow.admin.shared.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.admin.shared.service.AdminSharedAjaxService;
import com.kh.batterflow.vo.Custom_docuDraftInsert_vo;
import com.kh.batterflow.vo.DocuCategory_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/sharedAjax")
public class AdminSharedAjaxController {
	
	@Autowired
	private AdminSharedAjaxService adminSharedAjaxService;
	
	//제공 양식 도입 카테고리에 있는 전체 기양서 양식 불러오기 ajax
	@GetMapping("introduction")
	public Map<String, Object> docuIntroduction(){
		Map<String, Object> docuCateSelect = adminSharedAjaxService.docuCateSelect();
		log.info("전체 기양식 양식 불러오기 docuCateSelec : {}", docuCateSelect);
		return docuCateSelect;
	}
	
	//제공 양식 도입 카테고리에 있는 보고 기양서 양식 불러오기 ajax
	@GetMapping("reportDraft")
	public Map<String, Object> docureportDraft(@RequestParam Map<String, String> divText){
		log.info("divText : {}", divText);
		Map<String, Object> reportDraft = adminSharedAjaxService.reportDraft(divText);
		log.info("보고 기안서 양식만 불러오기 reportDraft : {}", reportDraft);
		return reportDraft;
	}
	
	//문서 카테고리 전체 데이터 불러오기
	@GetMapping("DocuCategoryList")
	public List<DocuCategory_vo> docuCategoryAll(){
		List<DocuCategory_vo> docuCategoryList = adminSharedAjaxService.docuCategoryAll();
		return docuCategoryList;
	}
	
	//문서 카테고리를 정하여 기안서 생성
	@PostMapping("DocuCategoryDraftInsert")
	public String docuCategoryDraftInsert(
			@RequestBody Custom_docuDraftInsert_vo docuDraftCheck
			){
		log.info("Controller - docuDraftCheck.getDocuCategoryId() : {}", docuDraftCheck.getDocuCategory());
		
		String draftInsert = adminSharedAjaxService.draftInsert(docuDraftCheck);
		return draftInsert;
	}
		
}

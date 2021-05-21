package com.kh.batterflow.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.admin.service.AdminAjaxService;
import com.kh.batterflow.vo.DraftTitleOrder_vo;
import com.kh.batterflow.vo.DraftTitleRule_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/adminajax")
public class AdminAjaxController {

	@Autowired
	private AdminAjaxService adminAjaxService;
	
	//default 이름 수정
	@GetMapping("/defaultNameChange")
	public String changeCateName(@RequestParam Map<String, Object> newNameWithId) {
		String resultCode = adminAjaxService.changeCateName(newNameWithId);
		return resultCode;
	}
	
	//새로 추가된 행 이름 추가
	@GetMapping("/newNameAdd")
	public String newCateName(@RequestParam Map<String, Object> newNameadd) {
		String resultCode = adminAjaxService.newCateNameAdd(newNameadd);
		return resultCode;
	}
	
	//카테고리 삭제
	@GetMapping("/delCate")
	public String delCate(@RequestParam Map<String, Object> delCate) {
		String resultCode = adminAjaxService.delCategory(delCate);
		return resultCode;
	}
	
	//문서 카테고리 이름 변경 전 id값 조회
	@GetMapping("/selectOneDocuId")
	public Map<String, Object> selectOneDocuId(@RequestParam Map<String, Object> selectOneMap) {
		Map<String, Object> map = adminAjaxService.selectOneDocuId(selectOneMap);
		return map;
	}
	
	//문서 카테고리 이름 변경
	@GetMapping("/updateCateName")
	public String updateCate(@RequestParam Map<String, Object> updateCate) {
		String resultCode = adminAjaxService.updateCategory(updateCate);
		return resultCode;
	}
	
	//문서 카테고리 클릭 시 해당하는 문서 양식 호출(첫번째하위)
	@GetMapping("/loadDraftWithCate")
	public Map<String, Object> draftWithCateMap(@RequestParam Map<String, Object> map){
		Map<String, Object> loadMap = adminAjaxService.draftWithCateMap(map);
		log.info("loadMap : {}", loadMap);
		return loadMap;
	}
	
	//기안서 복사 했을 때 insert 후 불러와서 세팅..
	@GetMapping("/draftCopy")
	public Map<String, Object> draftCopyAfterSelect(@RequestParam Map<String, Object> insertAndSelect){
		Map<String, Object> copyMap = adminAjaxService.draftCopyAfterSelect(insertAndSelect);
		log.info("map : {}", copyMap);
		return copyMap;
	}
	
	//기안 문서 제목 규칙 내용 모두 불러오기
	@GetMapping("/draftTitleRuleLoad")
	public List<DraftTitleOrder_vo> draftTitleRuleLoad(){
		List<DraftTitleOrder_vo> list = adminAjaxService.draftTitleRuleLoad();
		return list;
	}
	
	//기안서 문서 제목 규칙 순서 저장
	@GetMapping("/titleRuleOrderUpdate")
	public String titleRuleOrderUpdate(@RequestParam String sendText) {
		log.info("order : {}", sendText);
		String updateResult = adminAjaxService.titleRuleOrderUpdate(sendText);
		return updateResult;
	}
	
	//기안서 양식 설명 update
	@GetMapping("/draftExplainUpdate")
	public void draftExplainUpdate(@RequestParam Map<String, String> textAreaVal) {
		adminAjaxService.draftExplainUpdate(textAreaVal);
	}
	
	//기안서 양식 저장 update
	@GetMapping("/draftFileUpdate")
	public String draftFileUpdate(@RequestParam Map<String, Object> map) {
		String resultCode = adminAjaxService.draftFileUpdate(map);
		
		return resultCode;
	}
}

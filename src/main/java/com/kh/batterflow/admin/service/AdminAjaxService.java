package com.kh.batterflow.admin.service;

import java.util.List;
import java.util.Map;

import com.kh.batterflow.vo.DraftTitleOrder_vo;
import com.kh.batterflow.vo.DraftTitleRule_vo;

public interface AdminAjaxService {
	//문서 카테고리 이름 변경
	String changeCateName(Map<String, Object> newNameWithId);
	//문서 카테고리 이름 추가
	String newCateNameAdd(Map<String, Object> newNameadd);
	//카테고리 삭제
	String delCategory(Map<String, Object> delCate);
	//문서 카테고리 이름 변경 전 id값 가져옴
	Map<String, Object> selectOneDocuId(Map<String, Object> selectOneMap);
	//문서 카테고리 이름 변경( 이름 중복체크 포함)
	String updateCategory(Map<String, Object> updateCate);
	//왼쪽 카테고리 누를 시 해당 문서 양식 불러오기
	Map<String, Object> draftWithCateMap(Map<String, Object> map);
	//기안서 복사 했을 때 insert 후 불러와서 세팅..
	Map<String, Object> draftCopyAfterSelect(Map<String, Object> insertAndSelect);
	//기안 문서 제목 규칙 내용 모두 불러오기
	List<DraftTitleOrder_vo> draftTitleRuleLoad();
	//기안서 문서 제목 규칙 순서 저장
	String titleRuleOrderUpdate(String orderText);
	//기안서 양식 설명 update
	void draftExplainUpdate(Map<String, String> textAreaVal);
	//기안서 양식 저장 update
	String draftFileUpdate(Map<String, Object> map);

}

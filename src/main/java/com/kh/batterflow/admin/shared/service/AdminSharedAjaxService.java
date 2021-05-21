package com.kh.batterflow.admin.shared.service;

import java.util.List;
import java.util.Map;

import com.kh.batterflow.vo.Custom_docuDraftInsert_vo;
import com.kh.batterflow.vo.DocuCategory_vo;

public interface AdminSharedAjaxService {
	//제공 양식 도입 카테고리에 있는 전체 기양서 양식 불러오기
	Map<String, Object> docuCateSelect();
	//보고 기안서 양식만 불러오기
	Map<String, Object> reportDraft(Map<String, String> divText);
	//문서 카테고리 전체 데이터 불러오기
	List<DocuCategory_vo> docuCategoryAll();
	//문서 카테고리를 정하여 기안서 생성
	String draftInsert(Custom_docuDraftInsert_vo docuDraftCheck);

}

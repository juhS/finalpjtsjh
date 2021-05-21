package com.kh.batterflow.admin.service;

import java.text.ParseException;
import java.util.List;

import com.kh.batterflow.vo.Custom_draftTemplate_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.UserClient_vo;

public interface AdminService {
	//전체 문서 카테고리 불러오기(삭제안되는 기본 문서카테고리)
	List<DocuCategory_vo> docuCategoryAll();
	//전체 기안서 양식 파일 불러오기(삭제안되는 기본 파일양식)
	List<DraftFile_vo> draftFileAll();
	//전체 기안서 양식 파일 불러오기(삭제되는 기본 파일양식)
	List<DraftFile_vo> draftFileAllNew();
	//전체 문서 카테고리 불러오기(삭제되는 기본 문서카테고리)
	List<DocuCategory_vo> docuCategoryAllNew();
	//전체 유저 불러오기
	List<UserClient_vo> userClientAll();
	//해당 문서 정보 로드하기
	Custom_draftTemplate_vo docuTemplateSelect(String draft_id) throws ParseException;

}

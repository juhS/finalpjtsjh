package com.kh.batterflow.admin.shared.dao;

import java.util.List;
import java.util.Map;

import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;

public interface AdminSharedAjaxDao {
	//DocuCategory_vo 에 문서 카테고리 이름들을 전부 가져오기 위해
	List<DocuCategory_vo> docuCategoryList();
	//DraftFile_vo 에 기안서 양식 파일들을 가져오기 위해
	List<DraftFile_vo> draftFileList();
	//문서 카테고리 이름들 중 보고라는 이름을 가져오기 위해
	DocuCategory_vo reportCategory(Map<String, String> divText);
	//보고 카테고리에 속하는 기안서들을 가져옴
	List<DraftFile_vo> reportDraftList(DocuCategory_vo reportCategory);
	//문서 카테고리를 정하여 기안서 생성
	int docuDraftInsert(Map<String, Object> cateWithDraftVoMap);
	//string인 문서 이름을 가지고 그에 해당하는 문서 카테고리를 불러옴
	DocuCategory_vo docuCategorySelectName(int cateNum);
	//문서 카테고리와 문서를 가지고 카테고리에 문서가 있는지 확인
	DocuCategory_vo docuDraftIsCate(Map<String, Object>cateAndDraftMap);
	//기안서 번호 가지고 기안서 하나 조회
	DraftFile_vo draftOneSelect(Map<String, Object> checkedDraftNo);
	//카테고리안에 기안서 있는지 확인
	int draftInCate(Map<String, Object> cateWithDraftVoMap);
	
}

package com.kh.batterflow.admin.dao;

import java.util.List;
import java.util.Map;

import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftTitleOrder_vo;
import com.kh.batterflow.vo.DraftTitleRule_vo;
import com.kh.batterflow.vo.DraftTitleRulereCord_vo;

public interface AdminAjaxDao {
	//문서 카테고리 헤더 이름 변경, 하위 카테고리 이름 변경
	int changeCateName(Map<String, Object> newNameWithId);
	//문서 카테고리 이름 추가하기전 중복체크(이름과 하위id가지고)
	DocuCategory_vo duplicateCheck(Map<String, Object> newNameadd);
	//문서 카테고리 이름 추가
	int newCateNameAdd(Map<String, Object> newNameadd);
	//첫번째 문서 카테고리 삭제
	int delCategory(Map<String, Object> delCate);
	//두번째 하위 카테고리 삭제
	int delSecondCategory(Map<String, Object> delCate);
	//문서 카테고리 이름 변경 전 이름 중복검사
	DocuCategory_vo duplicateCheckWithName(Map<String, Object> updateCate);
	//문서 카테고리 클릭시 해당하는 문서 양식 불러오기
	List<DraftFile_vo> draftWithCateMap(Map<String, Object> map);
	//문서 카테고리 클릭시 전체 문서 양식 불러오기
	List<DraftFile_vo> draftWithCateMapAll(Map<String, Object> map);
	//기안서 양식 파일 테이블(draftFile) 에서 시퀀스 번호 가져오기
	int draftFileSeqNumberGet();
	//기안서 복사하여 insert
	int draftCopyAfterInsert(Map<String, Object> insertAndSelect);
	//복사한 기안서 불러오기 pk 이용해서
	DraftFile_vo draftCopyAfterSelect(int pkNum);
	//기안 문서 제목 규칙 내용 모두 불러오기
	List<DraftTitleRule_vo> draftTitleRuleLoad();
	//제목 규칙 순서 테이블 불러오기
	DraftTitleRulereCord_vo titleRuleOrder();
	//기안서 문서 제목 규칙 순서 저장
	int titleRuleOrderUpdate(String orderText);
	//기안서 양식 설명 update
	void draftExplainUpdate(Map<String, String> textAreaVal);
	//기안서 양식 저장 update
	int draftFileUpdate(Map<String, Object> map);

}

package com.kh.batterflow.user.document.dao;

import java.util.List;
import java.util.Map;

import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DocumentSort_vo;
import com.kh.batterflow.vo.DraftAttach_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftListRecord_vo;
import com.kh.batterflow.vo.DraftRecord_vo;
import com.kh.batterflow.vo.DraftRelated_vo;
import com.kh.batterflow.vo.Mydraft_vo;
import com.kh.batterflow.vo.UserClient_vo;

public interface DocumentDao {
	// 초기 유저정보 불러오기
	List user_info();
	//초기 부서정보 불러오기
	List<Dept_vo> dept_info();
	// 검색창에 검색한 결과 불러오기
	List<UserClient_vo> internal_search_result(String internal_search);
	//양식 화면에서 왼쪾 메뉴 카테고리 불러오기
	List<DocuCategory_vo> getDocuCategory();
	// 양식화면에서 오른쪽 모든 양식문서 파일 불러오기
	List<DraftFile_vo> getDraftFile();
	//카테고리선택하면 오른쪽 화면 해당하는 카테고리의 양식문서 파일만 가져오기
	List<DraftFile_vo> getCategoryClick(int category_value);
	// 양식파일에서 오른쪽 상단의 정렬메뉴 선택시 정렬하는 것.
	List<DraftFile_vo> getSelected_sort(DocumentSort_vo vo);
	
	// 해당하는 문서에 대한 네이밍 규칙 가져오기
	List<String> document_rule_name(int draft_no);
	//유저의 직책 가져오기
	String getUserJob(int user_id);
	//유저의 부서 가져오기
	String getUserDept(int user_id);
	// 해당하는 기안서의 vo 가져오기
	DraftFile_vo getDocument_info(int draft_no);
	// 새로만들 기안서 양식번호 가져오기
	int Document_draft_no();
	// 사용자가 기안서 작성했을때 dratfile등록되는 코드문 
	int Document_DraftFile_insert(DraftFile_vo insert_draftFile_vo);
	// 기안서 이력번호 새로 만들어서 리턴하기 
	int Document_draftRecord_no();
	//	기안서 기록 등록
	int document_record_insert(DraftRecord_vo insert_draftRecord_vo);
	// 기안서 리스트 이력 번호 생성
	int Document_draftListRecord_id();
	// 기안서 리스트 이력 등록
	int Document_listrecord_insert(DraftListRecord_vo insert_draftListRecord_vo);
	// 기안서 관련자 시퀀스 생성
	int Document_related_id();
	// 기안문서 관련자 db에 넣기
	int setProcess_user_insert(DraftRelated_vo new_draftrelated_vo);
	// 기안 파일 ID 생성
	int DocumentFileIdCreate();
	//	첨부파일 테이블에 insert하는 구문
	void DocumentAttachFileInsert(DraftAttach_vo new_draftAtaach_vo);
	
	
	// 나의 결재문서 보기 초기값 불러오기
	List<Mydraft_vo> getMyDraft(Mydraft_vo mydraft);
	
	// 나의 문서들 페이징
	int selectBoardListCnt(int user_id);
	// 해당하는 문서의 관련자들 순서대로 불러오기
	List<DraftRelated_vo> getDocumentRelate(int draft_no);
	//기안서 이력번호 가져오기
	int getDraft_Rec_No(int draft_no);
	// 등록된 파일정보 불러오기
	List<DraftAttach_vo> getDraftFiles(int draft_rec_no);
	// 파일 고유번호로 파일정보 가져오기
	DraftAttach_vo getDownloadFile_info(int file_id);
	// 기안서를 결재 할 사람들의 목록
	List<DraftRelated_vo> payment_people(int draft_rec_no);
	// 기안서를 결재 한 사람들의 목록
	List<DraftListRecord_vo> paymented_people(int draft_rec_no);
	// 결재 기록 남기기
	void payment(DraftListRecord_vo vo);
	// 기안서 상태 완료로 바꿔주기
	void payment_end(DraftRecord_vo record_vo);
	// 최종 상태 확인  결재완료인지 진행중인지
	String getState(int draft_rec_no);
	//반려 상태로 만들기
	void companion(int draft_rec_no);
	
}

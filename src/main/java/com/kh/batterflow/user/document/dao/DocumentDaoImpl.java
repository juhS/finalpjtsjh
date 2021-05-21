package com.kh.batterflow.user.document.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.member.dao.MemberDaoImpl;
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
import com.kh.batterflow.vo.User_client_map_vo;

import lombok.extern.slf4j.Slf4j;
@Repository
@Slf4j
public class DocumentDaoImpl implements DocumentDao{

	@Autowired
	private SqlSession sqlSession;
	
	
	// 회원의 모든 정보를 List로 받아옴
	@Override
	public List<UserClient_vo> user_info() {
		
		List<UserClient_vo> list = sqlSession.selectList("document.first_user_info");
		log.info("result : {} ", list);
		System.out.println(" list info " + list);
		
		return list;
	}


	@Override
	public List<Dept_vo> dept_info() {
		
		List<Dept_vo> dept_info = sqlSession.selectList("document.dept_info");
		
		log.info("dept : {}" , dept_info);
		
		
		return dept_info;
	}


	@Override
	public List<UserClient_vo> internal_search_result(String internal_search) {
		
		List<UserClient_vo> internal_search_result = sqlSession.selectList("document.internal_search_result",internal_search);
		
		log.info("internal_search_result", internal_search_result);
		
		return internal_search_result;
	}


	@Override
	public List<DocuCategory_vo> getDocuCategory() {
		
		List<DocuCategory_vo> docuCategory = sqlSession.selectList("document.docuCategory");
		
		log.info("docuCategory", docuCategory);
		
		return docuCategory;
	}


	@Override
	public List<DraftFile_vo> getDraftFile() {
		List<DraftFile_vo> draftFile = sqlSession.selectList("document.getDraftFile");
		
		log.info("draftFile", draftFile);
		
		return draftFile;
	}


	@Override
	public List<DraftFile_vo> getCategoryClick(int category_value) {
		
		List<DraftFile_vo> category_click_list = sqlSession.selectList("document.getCategory_click",category_value);
		
		log.info("카테고리 클릭하면 나오는 해당 양식 파일 리스트 : " + category_click_list);
		
		return category_click_list;
	}


	@Override
	public List<DraftFile_vo> getSelected_sort(DocumentSort_vo vo) {
		System.out.println("DocumentSort"+vo);
		List<DraftFile_vo> selected_sort_list = sqlSession.selectList("document.getselected_sort_list",vo);
		
		log.info("선택한 정렬의 결과" + selected_sort_list);
		
		return selected_sort_list;
	}





	//문서양식 불러올때 rulename 불러오기 
	@Override
	public List<String> document_rule_name(int draft_no) {
		
		List<String> rule_name_list = sqlSession.selectList("document.getRuleName",draft_no);
				
		return rule_name_list;
	}


	@Override
	public String getUserJob(int user_id) {
	
		String user_job = sqlSession.selectOne("document.getUserJob",user_id);
		
		return user_job;
	}


	@Override
	public String getUserDept(int user_id) {

		String user_dept = sqlSession.selectOne("document.getUserDept",user_id);
		
		return user_dept;
	}


	@Override
	public DraftFile_vo getDocument_info(int draft_no) {

		DraftFile_vo document_info = sqlSession.selectOne("document.getDocumentInfo",draft_no);
		
		return document_info;
	}


	@Override
	public int Document_draft_no() {
	
		int draft_no = sqlSession.selectOne("document.setDcument_draft_no");
			
		return draft_no;
	}


	@Override
	public int Document_DraftFile_insert(DraftFile_vo insert_draftFile_vo) {

		int result = sqlSession.insert("document.insert_draftfile",insert_draftFile_vo);
		
		return result;
	}


	@Override
	public int Document_draftRecord_no() {
		
		int result = sqlSession.selectOne("document.newDraftRecord_no");
		
		return result;
	}


	@Override
	public int document_record_insert(DraftRecord_vo insert_draftRecord_vo) {
	
		int result = sqlSession.insert("document.document_record_insert",insert_draftRecord_vo);
		
		return result;
	}


	@Override
	public int Document_draftListRecord_id() {
	
		int draftListRecord_id = sqlSession.selectOne("document.draft_list_record");
		
		return draftListRecord_id;
	}

	
	@Override
	public int Document_listrecord_insert(DraftListRecord_vo insert_draftListRecord_vo) {

		int result = sqlSession.insert("document.draftListRecordInsert",insert_draftListRecord_vo);
		
		return result;
	}



	// 기안서 관련자 시퀀스 생성
	@Override
	public int Document_related_id() {
		
		int Draft_related_person_id = sqlSession.selectOne("document.Draft_related_person_id");
		
		return Draft_related_person_id;
	}


	@Override
	public int setProcess_user_insert(DraftRelated_vo new_draftrelated_vo) {
		
		int result = sqlSession.insert("document.setProcess_user_insert",new_draftrelated_vo);
		
		return result;
	}


	@Override
	public int DocumentFileIdCreate() {
		
		int DraftFileId = sqlSession.selectOne("document.DraftFileIdCreate");
		
		return DraftFileId;
	}


	@Override
	public void DocumentAttachFileInsert(DraftAttach_vo new_draftAtaach_vo) {
	
		sqlSession.insert("document.DraftFileAttachfileInsert",new_draftAtaach_vo);
		
	}


	@Override
	public List<Mydraft_vo> getMyDraft(Mydraft_vo mydraft) {

		System.out.println("mydraft : " + mydraft);
		
		List<Mydraft_vo> myDraft = sqlSession.selectList("document.myDraftFile",mydraft);
		
		System.out.println("마이 드래프트 : "+ myDraft);
		
		return myDraft;
	}


	@Override
	public int selectBoardListCnt(int user_id) {
	
		int listCnt = sqlSession.selectOne("document.selectBoardListCnt",user_id);
		
		System.out.println("글자 개수 : "+ listCnt);
		
		return listCnt;
	}


	@Override
	public List<DraftRelated_vo> getDocumentRelate(int draft_no) {
		
		List<DraftRelated_vo> list = sqlSession.selectList("document.getDocumentRelate",draft_no);
		
		System.out.println(draft_no+"번의 프로세스 관련자들 " + list);
		
		return list;
	}


	@Override
	public int getDraft_Rec_No(int draft_no) {

		int draft_rec_no = sqlSession.selectOne("document.getDraft_rec_no",draft_no);
		
		return draft_rec_no;
	}


	@Override
	public List<DraftAttach_vo> getDraftFiles(int draft_rec_no) {
		
		List<DraftAttach_vo> files = sqlSession.selectList("document.getDraftFiles",draft_rec_no);
		
		
		return files;
	}


	@Override
	public DraftAttach_vo getDownloadFile_info(int file_id) {
		
		DraftAttach_vo files = sqlSession.selectOne("document.getFileInfo",file_id);
		
		return files;
	}


	@Override
	public List<DraftRelated_vo> payment_people(int draft_rec_no) {
		
		List<DraftRelated_vo> vo = sqlSession.selectList("document.getPayment_People",draft_rec_no);
		
		return vo;
	}


	@Override
	public List<DraftListRecord_vo> paymented_people(int draft_rec_no) {
		
		List<DraftListRecord_vo> vo = sqlSession.selectList("document.getPaymented_People",draft_rec_no);
		
		return vo;
	}


	@Override
	public void payment(DraftListRecord_vo vo) {
		
		sqlSession.insert("document.payment",vo);
		
	}


	@Override
	public void payment_end(DraftRecord_vo vo) {
		sqlSession.update("document.draftrecordUpdate",vo);
		
	}


	@Override
	public String getState(int draft_rec_no) {
		String state = sqlSession.selectOne("document.getState",draft_rec_no);
		
		return state;
	}


	@Override
	public void companion(int draft_rec_no) {
		sqlSession.update("document.companion",draft_rec_no);
		
	}


	

	

}

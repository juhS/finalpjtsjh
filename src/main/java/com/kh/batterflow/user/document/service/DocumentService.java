package com.kh.batterflow.user.document.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftAttach_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftRelated_vo;
import com.kh.batterflow.vo.Mydraft_vo;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.User_client_map_vo;

public interface DocumentService {
	// 내부 수신자 회람자에 출력될 유저들의 정보를 가져오기
	List<UserClient_vo> getUserInfo();
	// 부서불러오기
	List<Dept_vo> getDeptinfo();
	// 유저 이름 또는 부서 또는 직책 검색
	List<UserClient_vo> internal_search(String internal_search);
	// 카테고리 불러오기
	List<DocuCategory_vo> getDocuCategory();
	// 오른쪽 화면에 뿌려지는 모든 양식파일 불러오기
	List<DraftFile_vo> getdraftFile();
	// 양식파일 중 카테고리 선택한 것들만 불러오기
	List<DraftFile_vo> category_click(int category_value);
	//정렬 버튼 클릭시 정렬되는것 
	List<DraftFile_vo> selected_sort(int selected_menu_value, String selected_sort_value);
	//기안문서 눌렀을때 처리할 서비스
	int Draft_Up_Load(List<Integer> circular_result_id_person, List<String> circular_selected_users_role_person,
			List<MultipartFile> fileList, String document_content_all, List<Integer> result_person_array_id,
			List<String> result_person_role, List<Integer> result_id_person, List<String> selected_users_role_person,
			int document_id, int user_id, String document_title, String document_name) throws IllegalStateException, IOException;
	// 문서를 읽어올때 문서이름 순서대로 가져오기 
	String getDocumentName(String user_name, int draft_no, String draft_title, String now_time);
	//유저의 부서 가져오기 
	String getUserDept(int user_id);
	//유저의 직책 가져오기
	String getUserJob(int user_id);
	//해당하는 문서의 정보를 불러온다.
	DraftFile_vo getDocumentInfo(int draft_no);
	
	
	// 내양식 파일 문서들 초기화면 불러오기 
	List<Mydraft_vo> getdraft(Mydraft_vo mydraft);
	// 나의 문서 목록의 개수
	int selectBoardListCnt(int user_id);
	// 해당 문서의 프로세스 순서대로 사람 불러오기
	List<DraftRelated_vo> getDocumentRelate(int draft_no);
	// 해당 문서의 프로세스들 중 수신자 불러오기
	List<DraftRelated_vo> getDocumentRelate_Recipient(int draft_no);
	// 해당 문서의 프로세스 들 중 회람자 불러오기
	List<DraftRelated_vo> getDocumentRelate_cricular(int draft_no);
	// 기안서 이력번호 가지고 오기
	int getDraft_rec_no(int draft_no);
	// 등록된 첨부파일 가져오기
	List<DraftAttach_vo> getDocumentAttach(int draft_rec_no);
	// 파일 다운로드하는 서비스
	void DownloadFile(HttpServletResponse response, int file_id) throws IOException;
	// 기안서 버튼 안눌리게 하기 위해서 만든 서비스 
	int btn_payment(int draft_rec_no, UserClient_vo login_user_info);
	// 결재 버튼을 눌렀을때 데이터 삽입.
	void payment(int user_id, int draft_rec_no);
	// 결재 했는지 안했는지 판별할 기준
	int getOrder(int draft_rec_no, UserClient_vo login_user_info);
	// 마지막 결재인지 확인한다.
	String payment_final(int draft_rec_no);
	// 최종 결재
	void payment_final_end(int user_id, int draft_rec_no);
	// 최종 결재가 된 문서인가
	String getState(int draft_rec_no);
	// 반려상태로 만들기
	void companion(int draft_rec_no);

	
	


	

	
	
}

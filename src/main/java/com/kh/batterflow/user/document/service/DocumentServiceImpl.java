package com.kh.batterflow.user.document.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.datatype.jsr310.deser.InstantDeserializer.FromDecimalArguments;
import com.kh.batterflow.user.document.controller.DocumentController_rest;
import com.kh.batterflow.user.document.dao.DocumentDao;
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

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class DocumentServiceImpl implements DocumentService{

	 
	// private final String path = "C:\\Users\\Song\\Desktop\\DAY2_HOMEWORK_SONGYUBIN.ZIP\\kh\\attach_fine";
	
	 private final String path = "D:/upload/kh55";
	 
	@Autowired
	DocumentDao documentDao;
	
	@Override
	public List<UserClient_vo> getUserInfo() {
		// TODO Auto-generated method stub
		List<UserClient_vo> user_info = documentDao.user_info();
		
		
		return user_info;
	}

	@Override
	public List<Dept_vo> getDeptinfo() {
		
	List<Dept_vo> dept_info = documentDao.dept_info();
	
		return dept_info;
	}

	@Override
	public List<UserClient_vo> internal_search(String internal_search) {
		
		
		List<UserClient_vo> internal_search_restult = documentDao.internal_search_result(internal_search);
		
		return internal_search_restult;
	}

	@Override
	public List<DocuCategory_vo> getDocuCategory() {
		
		List<DocuCategory_vo> docuCategory = documentDao.getDocuCategory();
		
		return docuCategory;
	}

	@Override
	public List<DraftFile_vo> getdraftFile() {
		
		List<DraftFile_vo> draftFile = documentDao.getDraftFile();
		
		return draftFile;
	}

	@Override
	public List<DraftFile_vo> category_click(int category_value) {
		
		List<DraftFile_vo> category_click_list = documentDao.getCategoryClick(category_value);
		
		return category_click_list;
	}

	@Override
	public List<DraftFile_vo> selected_sort(int selected_menu_value, String selected_sort_value) {
		String selected_sort = "";
		if(selected_sort_value.equals("empty")) {
			selected_sort = "draft_no";
		} else if(selected_sort_value.equals("name")) {
			selected_sort = "draft_title";
		}else if(selected_sort_value.equals("explain")) {
			selected_sort = "draft_explain";
		}else if(selected_sort_value.equals("date")) {
			selected_sort = "draft_initial_regist_date";
		}else if(selected_sort_value.equals("modify")) {
			selected_sort = "draft_modify_date";
		}
		
		DocumentSort_vo docu_sort = DocumentSort_vo.builder()
						.selected_menu_value(selected_menu_value)
						.selected_sort(selected_sort)
						.build();
		
		List<DraftFile_vo> selected_sort_list = documentDao.getSelected_sort(docu_sort);
		
		return selected_sort_list;
	}

	//기안 버튼 눌렀을때 처리할 서비스
	@Override
	@Transactional
	public int Draft_Up_Load(List<Integer> circular_result_id_person, List<String> circular_selected_users_role_person,
			List<MultipartFile> fileList, String document_content_all, List<Integer> result_person_array_id,
			List<String> result_person_role, List<Integer> result_id_person, List<String> selected_users_role_person,
			int document_id, int user_id, String document_title, String document_name) throws IllegalStateException, IOException {
		
		// 문서 설명과 문서 카테고리 ID 를 불러와야할듯.
		  DraftFile_vo draftfile =  documentDao.getDocument_info(document_id);
		
		//기안서 양식번호 미리 만들어 놓기
		   int new_draft_no = documentDao.Document_draft_no();
		  System.out.println("기안서 양식번호 미리 만들어 놓기" + new_draft_no);
		// 파일 vo를 만들어서 넣어준것.
		   DraftFile_vo insert_draftFile_vo = DraftFile_vo.builder()
				   										.draft_no(new_draft_no)
				   										.draft_title(document_name)
				   										.draft_explain(draftfile.getDraft_explain())
				   										.user_write_id(user_id)
				   										.user_update_id(user_id)
				   										.docu_cate_id(draftfile.getDocu_cate_id())
				   										.draft_content(document_content_all)
				   										.build();
		   
		   System.out.println(insert_draftFile_vo);
		//DraftFile insert							이름, 유저 id , 문서내용 문서설명 문서 카테고리 아이디 전송
		 int result_draftfile = documentDao.Document_DraftFile_insert(insert_draftFile_vo);
		
		 System.out.println("기안서 양식등록 완료");
		 
		 //기안서 기록 번호를 미리 만들어줘서 넣어야 함
		 int new_draftRecord_no = documentDao.Document_draftRecord_no();
		 System.out.println("기안서 기록 번호 " + new_draftRecord_no);
		//파일 기록 vo를 만들어서 넣어줘야 함
		 DraftRecord_vo insert_draftRecord_vo = DraftRecord_vo.builder()
				 											.draft_rec_no(new_draftRecord_no)
				 											.draft_rec_title(document_name)
				 											.draft_rec_status("진행중")
				 											.draft_no(new_draft_no)
				 											.build();
			System.out.println("insert_draftRecord_vo : "+insert_draftRecord_vo);											
		//DraftRecord insert
		int result_draftRecord = documentDao.document_record_insert(insert_draftRecord_vo);
	
		System.out.println("기안서 기록 완료");
		
		//draftListRecord ID값 미리 만들기 
		int new_draftListRecord_ID = documentDao.Document_draftListRecord_id();
		
		System.out.println("draftListRecord ID값" + new_draftListRecord_ID);
		//파일 리스트  기록 vo 만들기
		DraftListRecord_vo insert_draftListRecord_vo = DraftListRecord_vo.builder()
																		.draft_history_id(new_draftListRecord_ID)
																		.user_id(user_id)
																		.draft_rec_no(new_draftRecord_no)
																		
																		.build();
		
		System.out.println("insert_draftListRecord_vo "+ insert_draftListRecord_vo);
		// DraftListRecord 에 insert 
		 int result_drfatListRecord = documentDao.Document_listrecord_insert(insert_draftListRecord_vo);
		 
		 System.out.println("기안서 리스트에 등록 완료");
		 
		// DraftAttach 에 파일 저장 및 파일 테이블에 추가

		if( !fileList.isEmpty()) {			//파일이 있을 때만 
			System.out.println("크기 : "+fileList.size());

			// 첨부파일 데이터 저장 
			for(MultipartFile mf :fileList ) {
				System.out.println("mf = "+mf);
				
			
				
//				// 기안 파일 ID 생성
				int draftFileId = documentDao.DocumentFileIdCreate();
		
				
				DraftAttach_vo new_draftAtaach_vo = DraftAttach_vo.builder()
																.draft_file_id(draftFileId)
																.draft_file_origin_name(mf.getOriginalFilename())
																.draft_file_alter_name(String.valueOf(draftFileId))
																.draft_file_path(path)
																.draft_file_separate(mf.getContentType())
																.draft_rec_no(new_draftRecord_no)
																.build();
				
				// 테이블에 첨부파일 저장하기
				documentDao.DocumentAttachFileInsert(new_draftAtaach_vo);
			
				
				// - 저장 위치 : path(C:\final_Attachfile) 
				
				mf.transferTo(new File(path,String.valueOf(draftFileId)));
				
				
			}
		}
		
		
		System.out.println("첨부파일 등록 완료");
		 
		
		
		
		
		

		//승인자 협조자 합의자넣기
		for(int i = 0; i < result_person_array_id.size(); i++) {
			
			//draftRelated 시퀀스 만들기
			int new_draftRelated = documentDao.Document_related_id();
			//역할에 맞는 vo 만들기
			DraftRelated_vo new_draftrelated_vo = DraftRelated_vo.builder()
															.draft_related_person_id(new_draftRelated)
															.draft_separate(result_person_role.get(i))
															.draft_rec_no(new_draftRecord_no)
															.user_id(result_person_array_id.get(i))
															.draft_related_order(i)
															.build();
			// draftRelated 등록
			int user_related_result_1 = documentDao.setProcess_user_insert(new_draftrelated_vo);
			
		}
		// 수신자  넣기
		for(int i = 0 ; i <result_id_person.size();i++ ) {
			//draftRelated 시퀀스 만들기
			int new_draftRelated = documentDao.Document_related_id();
			
			DraftRelated_vo new_draftrelated_vo = DraftRelated_vo.builder()
															.draft_related_person_id(new_draftRelated)
															.draft_separate(selected_users_role_person.get(i))
															.draft_rec_no(new_draftRecord_no)
															.user_id(result_id_person.get(i))
															.draft_related_order(i)
															.build();
			
			int user_related_result_2 = documentDao.setProcess_user_insert(new_draftrelated_vo);
			
		}
		//회람자 넣기
		for(int i = 0 ; i <circular_result_id_person.size();i++ ) {
			//draftRelated 시퀀스 만들기
			int new_draftRelated = documentDao.Document_related_id();
			
			DraftRelated_vo new_draftrelated_vo = DraftRelated_vo.builder()
					.draft_related_person_id(new_draftRelated)
					.draft_separate(circular_selected_users_role_person.get(i))
					.draft_rec_no(new_draftRecord_no)
					.user_id(circular_result_id_person.get(i))
					.draft_related_order(i)
					.build();
			
			int user_related_result_2 = documentDao.setProcess_user_insert(new_draftrelated_vo);
			
		}
		
		return 1;
	}

	//문서의 유저에 해당되는 제목 가져오기
	@Override
	public String getDocumentName(String user_name, int draft_no, String draft_title, String now_time) {
		
		List<String> document_rule_name = documentDao.document_rule_name(draft_no);
		String document_name = "";
		
		
		
		for(int i = 0; i < document_rule_name.size(); i++) {
			if( i == (document_rule_name.size()-1)) {
				switch(document_rule_name.get(i)) {
				case "기안자명": 
					document_name += user_name;
					break;
				case "문서양식제목" : 
					document_name += draft_title;
					break;
				case "작성일" : 
					document_name += now_time;
					break;
					
				}
				
			}else {
				switch(document_rule_name.get(i)) {
				case "기안자명": 
					document_name += user_name +"-";
					break;
				case "문서양식제목" : 
					document_name += draft_title + "-";
					break;
				case "작성일" : 
					document_name += now_time + "-";
					break;
					
				}
			}
			
		}
		
		
		return document_name;
	}
	//유저의 부서 가져오기
	@Override
	public String getUserDept(int user_id) {
	
		String user_dept  = documentDao.getUserDept(user_id);
		
		return user_dept;
	}
	//유저의 직책 가져오기
	@Override
	public String getUserJob(int user_id) {
		
		String user_job = documentDao.getUserJob(user_id);
		
		return user_job;
	}

	@Override
	public DraftFile_vo getDocumentInfo(int draft_no) {
		
		DraftFile_vo document_info = documentDao.getDocument_info(draft_no);
		
		return document_info;
	}

	// 내양식파일 문서 초기파일 불러오기
	@Override
	public List<Mydraft_vo> getdraft(Mydraft_vo mydraft) {
		
		List<Mydraft_vo> draft = documentDao.getMyDraft(mydraft);
		
		return draft;
	}

	@Override
	public int selectBoardListCnt(int user_id) {
		
		int listCnt = documentDao.selectBoardListCnt(user_id);
		
		return listCnt;
	}

	@Override
	public List<DraftRelated_vo> getDocumentRelate(int draft_no) {
		
		List<DraftRelated_vo> result = new ArrayList<DraftRelated_vo>();
		
		List<DraftRelated_vo> list = documentDao.getDocumentRelate(draft_no);
		
		for(DraftRelated_vo vo : list) {
			
			switch(vo.getDraft_separate()) {
			
			case "approver":
				
				result.add(vo);
				break;
			case "consensual":
				result.add(vo);
				break;
			case "collaborator" :
				result.add(vo);
				break;
			}
		}
		
		System.out.println("기안자, 결재ㅏ : " + result);
		
		return result;
	}

	@Override
	public List<DraftRelated_vo> getDocumentRelate_Recipient(int draft_no) {
		List<DraftRelated_vo> result = new ArrayList<DraftRelated_vo>();
		
		List<DraftRelated_vo> list = documentDao.getDocumentRelate(draft_no);
		
		for(DraftRelated_vo vo : list) {
			
			if(vo.getDraft_separate().equals("Recipient")) {
				result.add(vo);
			}
			
		}
		System.out.println("수신자 : " + result);
		
		return result;
	}

	@Override
	public List<DraftRelated_vo> getDocumentRelate_cricular(int draft_no) {
		List<DraftRelated_vo> result = new ArrayList<DraftRelated_vo>();
		
		List<DraftRelated_vo> list = documentDao.getDocumentRelate(draft_no);
		
		for(DraftRelated_vo vo : list) {
			
			if(vo.getDraft_separate().equals("circular")) {
				result.add(vo);
			}
		}
		System.out.println("회람자 : " + result);
		
		return result;
	}

	@Override
	public int getDraft_rec_no(int draft_no) {
		
		int draft_rec_no = documentDao.getDraft_Rec_No(draft_no);
		
		return draft_rec_no;
	}

	@Override
	public List<DraftAttach_vo> getDocumentAttach(int draft_rec_no) {
	
		List<DraftAttach_vo> files = documentDao.getDraftFiles(draft_rec_no);
		
		return files;
	}

	@Override
	public void DownloadFile(HttpServletResponse response,int file_id) throws IOException  {
		
		
		
		DraftAttach_vo file_vo = documentDao.getDownloadFile_info(file_id);
		String original_File_Name = file_vo.getDraft_file_origin_name();
		String stored_File_Name = file_vo.getDraft_file_alter_name();
		
		byte[] fileByte = FileUtils.readFileToByteArray(new File(path+"\\"+stored_File_Name));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition","attachment; fileName=\""+URLEncoder.encode(original_File_Name));
		response.setHeader("content-Transfer-Encoding","binary");
		response.getOutputStream().write(fileByte);
		
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
		
		
		
	}

	@Override
	public int btn_payment(int draft_rec_no, UserClient_vo login_user_info) {
	
		int result = 0;
		//수신자 회람자 제외하고
		List<DraftRelated_vo> real_payment =new ArrayList<>();
		
		// 결재 할 사람들
		List<DraftRelated_vo> payment = documentDao.payment_people(draft_rec_no);
		
		// 결재 한 사람들
		List<DraftListRecord_vo> paymented = documentDao.paymented_people(draft_rec_no);
		
		// 수신자 회람자 제외시키는 코드문
		for(DraftRelated_vo list: payment) {
			if(list.getDraft_separate().equals("approver")||list.getDraft_separate().equals("consensual")||list.getDraft_separate().equals("collaborator")) {
				real_payment.add(list);
			}
		}
		System.out.println("사람 제외시키기 전 "+real_payment);
		System.out.println(".결재 한사람 명수" + paymented.size());
		for(int i = 0; i < paymented.size(); i++) {
			real_payment.remove(0);
		}
		
		System.out.println("기안서 올린사람 제외하고 나머지 사람들"+ real_payment);
		
		System.out.println("제거 한 후에 첫번째 사람 이름" + real_payment.get(0).getUser_name() +real_payment.get(0).getUser_id() );
		
		if(!real_payment.isEmpty()) {
			result = real_payment.get(0).getUser_id();
		}
		 
		
		return result;
	}

	@Override
	public void payment(int user_id, int draft_rec_no) {
		
		DraftListRecord_vo vo = DraftListRecord_vo.builder().draft_rec_no(draft_rec_no)
															.user_id(user_id)
															.build();
		
		documentDao.payment(vo);
		
	}

	@Override
	public int getOrder(int draft_rec_no, UserClient_vo login_user_info) {
		
			
				
				// 결재 한 사람들
				List<DraftListRecord_vo> paymented = documentDao.paymented_people(draft_rec_no);
			
			
				
		return paymented.size();
	}

	// 이 결재가 마지막인지 판단
	@Override
	public String payment_final(int draft_rec_no) {
		String result ="";
				//수신자 회람자 제외하고
				List<DraftRelated_vo> real_payment =new ArrayList<>();
				
				// 결재 할 사람들
				List<DraftRelated_vo> payment = documentDao.payment_people(draft_rec_no);
				
				// 결재 한 사람들
				List<DraftListRecord_vo> paymented = documentDao.paymented_people(draft_rec_no);
				
				// 수신자 회람자 제외시키는 코드문
				for(DraftRelated_vo list: payment) {
					if(list.getDraft_separate().equals("approver")||list.getDraft_separate().equals("consensual")||list.getDraft_separate().equals("collaborator")) {
						real_payment.add(list);
					}
				}

				for(int i = 0; i < paymented.size(); i++) {
					real_payment.remove(0);
				}
				
				if(real_payment.size() == 1) {
					result = "결재완료";
				}
				
		return result;
	}

	// 결재가 마지막으로 이루어지는 부분
	@Override
	public void payment_final_end(int user_id, int draft_rec_no) {
		// TODO Auto-generated method stub
		DraftListRecord_vo vo = DraftListRecord_vo.builder().draft_rec_no(draft_rec_no)
				.user_id(user_id)
				.build();

		documentDao.payment(vo);
		
		DraftRecord_vo record_vo = DraftRecord_vo.builder().draft_rec_no(draft_rec_no)
															.draft_rec_status("결재완료")
															.build();
		documentDao.payment_end(record_vo);
		
	}
	// 최종결재가 된 문서인지.
	@Override
	public String getState(int draft_rec_no) {
		
		
		String state = documentDao.getState(draft_rec_no);
		
		
		return state;
	}

	@Override
	public void companion(int draft_rec_no) {
		
		documentDao.companion(draft_rec_no);
		
	}

	


}

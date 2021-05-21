package com.kh.batterflow.user.document.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.batterflow.user.document.service.DocumentService;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("document")
public class DocumentController_rest {

	@Autowired
	DocumentService documentService;

	List<MultipartFile> formData  = new ArrayList<MultipartFile>();
	
	
	// 결재 버튼을 누르면 실행되는 함수
	@PostMapping("payment")
	public void document_payment(@RequestParam int user_id, @RequestParam int draft_rec_no) {
		
		String final_payment = documentService.payment_final(draft_rec_no);
		if(final_payment.equals("결재완료")) {
			System.out.println("결재 완료 실행");
			documentService.payment_final_end(user_id,draft_rec_no);
		}else {
			System.out.println("결재 실행");
			documentService.payment(user_id,draft_rec_no);
		}
		
		
		
	}
	// 반려 버튼을 누르면 실행되는 함수
	@PostMapping("Companion")
	public void document_companion(@RequestParam int user_id, @RequestParam int draft_rec_no) {
		
		documentService.companion(draft_rec_no);
		
	}
	
	
	// 내부 수신자 검색
	@PostMapping("search")
	public List<UserClient_vo> document_search(Model model, @RequestParam String search) {

		List<UserClient_vo> internal_search_result = documentService.internal_search(search);
		if (search.equals("")) {

		}

		return internal_search_result;
	}

	// search 칸이 비어있을때 모든 유저 정보 불러오기
	@PostMapping("search_empty")
	public List<UserClient_vo> document_search_empty(Model model) {

		List<UserClient_vo> internal_search_result = documentService.getUserInfo();

		return internal_search_result;
	}

	// 양식파일 페이지 카테고리 클릭 메소드
	@PostMapping("category_click")
	public List<DraftFile_vo> category_click(@RequestParam int category_value) {

		List<DraftFile_vo> category_click = documentService.category_click(category_value);

		return category_click;
	}

	// 양식파일 페이지 정렬 버튼 클릭
	@PostMapping("selected_sort_value")
	public List<DraftFile_vo> selected_sort_value(@RequestParam int selected_menu_value,
			@RequestParam String selected_sort_value) {

		System.out.println("선택한 메뉴 : " + selected_menu_value + "선택한 정렬" + selected_sort_value);

		List<DraftFile_vo> selected_sort_value_list = documentService.selected_sort(selected_menu_value,
				selected_sort_value);

		return selected_sort_value_list;
	}

	// 카테고리 양식파일 다시 모두 보기
	@PostMapping("category_top")
	public List<DraftFile_vo> category_top() {

		List<DraftFile_vo> draftFile = documentService.getdraftFile();

		return draftFile;
	}

	
	@PostMapping("DraftFileUpload") 
	public void DraftFileUpload(
			@RequestParam(value = "files") List<MultipartFile> formData ) {
		
		List<MultipartFile> file = formData;
		
		this.formData = file;
		System.out.println("넘어온거 "+file.isEmpty());
		System.out.println(file.toString());
		
		
		
	}
	
	// 기안 버튼 눌렀을때 처리할 서비스
	// 문서 내용 (부서 직위 작성자명 작성일 ), 문서제목, 프로세스 o , 첨부파일 o , 유저id, 문서 id
	@PostMapping("DraftUpLoad")
	public String DraftUpLoad(
			@RequestParam(value = "files") List<MultipartFile> formData,
			@RequestParam(value = "document_content_all") String document_content_all,
			
			@RequestParam(value = "circular_result_id_person") List<Integer> circular_result_id_person,
			@RequestParam(value = "circular_selected_users_role_person") List<String> circular_selected_users_role_person,

			@RequestParam(value = "result_person_array_id") List<Integer> result_person_array_id,
			@RequestParam(value = "result_person_role") List<String> result_person_role,
			
			@RequestParam(value = "result_id_person") List<Integer> result_id_person,
			@RequestParam(value = "selected_users_role_person") List<String> selected_users_role_person,
			
			@RequestParam(value = "document_id") int document_id,
			@RequestParam(value = "user_id") int user_id,
			
			@RequestParam(value = "document_title") String document_title,
			@RequestParam(value = "document_name") String document_name
			) throws IOException {
		System.out.println("출력하는 값"+document_content_all);
		
		for(int i =0; i< formData.size(); i++) {
			System.out.println(formData.get(i));
		}
		for(MultipartFile mf : formData ) {
			System.out.println(mf.getName());
		}
		
		String msg = "";
		
		 int result = documentService.Draft_Up_Load(circular_result_id_person,circular_selected_users_role_person,formData,document_content_all,
		  result_person_array_id, result_person_role,result_id_person,selected_users_role_person,document_id,user_id,document_title,document_name);
		  
		 // if(result == 0) { msg = "문서작중 오류가 발생하였습니다."; }else { msg = "문서가 등록되었습니다."; }
		
		return msg;
	}

}

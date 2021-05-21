package com.kh.batterflow.user.document.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.batterflow.user.document.service.DocumentService;
import com.kh.batterflow.user.document.service.PagingService;
import com.kh.batterflow.vo.Dept_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftAttach_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftRelated_vo;
import com.kh.batterflow.vo.Mydraft_vo;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("document")
public class DocumentController {
	
	@Autowired
	DocumentService documentService;
	
	@GetMapping("download")
	public void download(HttpServletRequest request,HttpServletResponse response) throws IOException {
	
		int file_id = Integer.valueOf(request.getParameter("draft_file_id"));
		
		documentService.DownloadFile(response,file_id);
		
		
	}
	
	
	// 동의하는 페이지 
	@GetMapping("agree")
	public String agree_page(Model model, HttpServletRequest request) {
		
		HttpSession httpSession = request.getSession();
		UserClient_vo login_user_info = (UserClient_vo)httpSession.getAttribute("login");
		int btn_payment = 0;
		
		int draft_no = Integer.parseInt(request.getParameter("draft_id"));
		// 해당하는 양식 내용 가져오기
		DraftFile_vo draft_info = documentService.getDocumentInfo(draft_no);
		//회람자와 수신자를 제외한 상단에 순서로 들어가게 될 프로세스
		List<DraftRelated_vo> draft_relate_acc = documentService.getDocumentRelate(draft_no);
		// 회람자
		List<DraftRelated_vo> draft_relate_Recipient = documentService.getDocumentRelate_Recipient(draft_no);
		// 수신자
		List<DraftRelated_vo> draft_relate_cricular = documentService.getDocumentRelate_cricular(draft_no);
		
		//기안서 이력번호 가져오기
		int draft_rec_no = documentService.getDraft_rec_no(draft_no);
		
		
	
		int payment_order = documentService.getOrder(draft_rec_no,login_user_info);
		
		
		
		//문서의 현재상태확인하기 
		String state = documentService.getState(draft_rec_no);
		
		//  결재버튼을 막기 위해서 실행하는 구문인데 결재가 완료되면 인덱스값이 없어서 에러가 발생하는데 이것을 막기위해서 
		// 결재가 완료되면 관리자만 결재버튼을 누를 수 있도록 수정
		if(!state.equals("결재완료")) {
			//기안서를 결재버튼 눌리는 것을 방지하기 위한 서비스
			 btn_payment = documentService.btn_payment(draft_rec_no,login_user_info);
		}
		
		
		
		
		
		// 첨부파일 가져오기 
		List<DraftAttach_vo> draft_file = documentService.getDocumentAttach(draft_rec_no);
		model.addAttribute("draft_rec_no",draft_rec_no);
		model.addAttribute("btn_payment",btn_payment);
		model.addAttribute("draft_info",draft_info );
		model.addAttribute("draft_relate_acc",draft_relate_acc );
		model.addAttribute("draft_relate_Recipient",draft_relate_Recipient );
		model.addAttribute("draft_relate_cricular",draft_relate_cricular );
		model.addAttribute("draft_file",draft_file );
		model.addAttribute("login_user_info", login_user_info);
		model.addAttribute("payment_order",payment_order);
		
		return "user/paperManagement/my_docu_agree_page";
	}
	
	
	
	@GetMapping("mydocument")
	public String myDocument(Model model,HttpServletRequest request
			, @RequestParam(defaultValue="1") int curPage) {
		HttpSession httpSession = request.getSession();
		
		UserClient_vo login_user_info = (UserClient_vo)httpSession.getAttribute("login");
		
		int user_id = login_user_info.getUser_id();
		 
		// 전체리스트 개수
		int listCnt = documentService.selectBoardListCnt(user_id);
		
		System.out.println(" listCnt:"+listCnt+" listCnt:"+curPage);
		PagingService pagination = new PagingService(listCnt, curPage);
		
		System.out.println(" pagination.getStartIndex():"+pagination.getStartIndex()+" pagination.getStartIndex():"+pagination.getStartIndex());
		
		
		Mydraft_vo mydraft = Mydraft_vo.builder()
										.pagesize(pagination.getPageSize())
										.startindex(pagination.getStartIndex())
										.page(pagination.getStartIndex() + pagination.getStartIndex())
										.user_id(user_id)
										.build();
		
		List<DocuCategory_vo> docuCategory = documentService.getDocuCategory();
		List<Mydraft_vo> draft = documentService.getdraft(mydraft);
		
		
		model.addAttribute("pagination",pagination);
		model.addAttribute("draft",draft);
		model.addAttribute("docuCategory",docuCategory);
		
		
		
		
	return "user/paperManagement/Mydocument";
		
	}
	
	@GetMapping("write")
	public String document_write_first(Model model, HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		
		int draft_no = Integer.parseInt(request.getParameter("draft_id"));
		
		UserClient_vo login_user_info = (UserClient_vo)httpSession.getAttribute("login");


		log.debug("write컨트롤러 실행");
		//수신자 가져오는 코드문
		List<UserClient_vo> user_info =  documentService.getUserInfo();
		List<Dept_vo> dept_info = documentService.getDeptinfo();
		
	
		//현재 접속한 유저의 부서와 직책을 가지고 오는 코드문
		String dept = documentService.getUserDept(login_user_info.getUser_id());
		String job = documentService.getUserJob(login_user_info.getUser_id());
		
		//현재 문서에대한 정보를 가져오는 코드문 
		DraftFile_vo document_info = documentService.getDocumentInfo(draft_no);
		
		//현재날짜 구하는 코드문
		Calendar cal = Calendar.getInstance();
		String year = Integer.toString(cal.get(Calendar.YEAR));
		String month = Integer.toString(cal.get(Calendar.MONTH));
		String day = Integer.toString(cal.get(Calendar.DAY_OF_MONTH));
		
		month = Integer.parseInt(month) >=10 ? month : "0" + month;
		day  = Integer.parseInt(day)  >= 10 ? day : "0" + day;
		
		String now_time = year + month + day;
		
		//문서불러올때 이름 적용하는 코드문 
		String document_name  = documentService.getDocumentName(login_user_info.getUser_name(),draft_no,document_info.getDraft_title(),now_time);
		
	
		model.addAttribute("document_info",document_info);
		model.addAttribute("dept",dept);
		model.addAttribute("job",job);
		model.addAttribute("document_name",document_name);
		model.addAttribute("draft_no",draft_no);
		model.addAttribute("login_user_info",login_user_info);
		model.addAttribute("user_info",user_info);
		model.addAttribute("dept_info",dept_info);
		
		System.out.println(user_info);
		return "user/paperManagement/createPaper";
	}
	
	//	유저 프로세스 설정 페이지
	@GetMapping("process")
	public String document_process_first(Model model) {
		
		
		
		List<UserClient_vo> user_info =  documentService.getUserInfo();
		List<Dept_vo> dept_info = documentService.getDeptinfo();
		model.addAttribute("user_info",user_info);
		model.addAttribute("dept_info",dept_info);
		
		return "user/paperManagement/myProcessManagement";
	}
	
	//문서 양식
	@GetMapping("main")
	public String document_sample(Model model) {
		
		List<DocuCategory_vo> docuCategory = documentService.getDocuCategory();
		List<DraftFile_vo> draftFile = documentService.getdraftFile();
		
		model.addAttribute("docuCategory",docuCategory);
		model.addAttribute("draftFile",draftFile);
		
		return "user/paperManagement/paperMain";
	}
	
	
}

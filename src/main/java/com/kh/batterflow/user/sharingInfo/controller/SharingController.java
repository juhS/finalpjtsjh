package com.kh.batterflow.user.sharingInfo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.batterflow.user.sharingInfo.service.SharingCommService;
import com.kh.batterflow.user.sharingInfo.service.SharingService;
import com.kh.batterflow.vo.Board_user_vo;
import com.kh.batterflow.vo.Comm_user_vo;
import com.kh.batterflow.vo.Criteria_vo;
import com.kh.batterflow.vo.PageMaker_vo;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

//board
@Slf4j
@Controller
@RequestMapping("/sharingInfo")
public class SharingController {

	@Autowired
	private SharingService sharingService;
	
	@Autowired
	private SharingCommService sharingCommService;
		
	//작성(글작성 버튼 누름 -> 글작성 페이지 전송)
	@GetMapping("noticeRWrite")
	public String noticeRWrite(Model model) {
			return "user/sharingInformation/noticeRWrite";
	}
	
	//작성(게시 버튼을 누름 -> 작성 성공 여부)
	@PostMapping("noticeRWrite")
	public String noticeRWrite(
			//주어진 객체에 알아서 잘 받는 설정
			@ModelAttribute("board_user_vo") Board_user_vo board_user_vo, Model model, HttpSession session) throws Exception{
		
			UserClient_vo login = (UserClient_vo) session.getAttribute("login");
			//int user_id = (int)session.getAttribute("login.user_id");
//			System.out.println("board_vo : " + board_vo.getBoard_title());
//			System.out.println("board_vo : " + board_vo.getBoard_content());
		
			login.getUser_id();
			//board_user_vo.setUser_id(user_id);
			board_user_vo.setUser_id(login.getUser_id());
			//System.out.println("컨트롤러 아이디1!" +login.getUser_id() );
			
			//System.out.println("컨트롤러 d아이디: " + board_user_vo.getUser_id());
			
			sharingService.write(board_user_vo);
			return "redirect:noticeMain";
	}
	
	//게시글 리스트 조회 / 게시글 목록 조회
	@GetMapping("noticeMain")
	public String noticeRMain(Model model, @ModelAttribute("creteria_vo") Criteria_vo criteria_vo /*,@RequestParam("contentSearch") String contentSearch*/) throws Exception{
		model.addAttribute("list", sharingService.list(criteria_vo));
		model.addAttribute("creteria_vo", criteria_vo);
		
		//System.out.println("criteria_vo " +criteria_vo );

		//System.out.println("board_user_vo list 컨트롤러 : " + sharingService.list(criteria_vo));
		
		//System.out.println("contentSearch : " + contentSearch);
		//model.addAttribute("search", sharingService.search());
		
		
		PageMaker_vo pageMaker_vo = new PageMaker_vo();
		pageMaker_vo.setCriteria_vo(criteria_vo);
		pageMaker_vo.setTotalCount(sharingService.listCount());
		
		model.addAttribute("pageMaker_vo", pageMaker_vo);
		
		return "user/sharingInformation/noticeMain";
	}
	
	//게시글 검색 : 제목
	@PostMapping("noticeSearch")
	@ResponseBody
	public List<Board_user_vo> noticeSearch(@RequestParam("contentSearch") String contentSearch ) throws Exception{
		
		List<Board_user_vo> noticeSearch = sharingService.noticeSearch(contentSearch);
		
		return noticeSearch;
		
	}
	
//	//게시글 검색 : 아이디
//	@PostMapping("noticeSearch")
//	@ResponseBody
//	public List<Board_user_vo> noticeIdSearch(@RequestParam("contentSearch") String contentSearch ) throws Exception{
//		
//		List<Board_user_vo> noticeIdSearch = sharingService.noticeIdSearch(contentSearch);
//		
//		return noticeIdSearch;
//		
//	}
	
	//게시글 리스트 상세 조회(제목,작성자, 작성일, 내용, 댓글) 
	@GetMapping("noticeRead")
	//public String read(@RequestParam("board_id") int board_id, Model model, @ModelAttribute("creteria_vo") Criteria_vo criteria_vo) throws Exception{	
	public String read(@RequestParam("board_id") int board_id, Board_user_vo board_user_vo, Model model, @ModelAttribute("creteria_vo") Criteria_vo criteria_vo) throws Exception{
		model.addAttribute("list", sharingService.list(criteria_vo));
		model.addAttribute("read", sharingService.read(board_user_vo.getBoard_id()));
		model.addAttribute("creteria_vo", criteria_vo);
		
		//댓글 목록 조회
		List<Comm_user_vo> commList = sharingCommService.readComm(board_user_vo.getBoard_id());
		model.addAttribute("commList", commList);
		//System.out.println("commlist : " + commList);
		
		//return "/batterflow/sharingInfo/noticeRead?board_id="+board_user_vo.getBoard_id();
		return "user/sharingInformation/noticeMain";
		//="+ board_user_vo.getBoard_id
		
	}
	
	/*
	 * //주의 //게시글 리스트 상세 조회2(제목,작성자, 작성일, 내용, 댓글) - 하나만 조회되게 바꿈.
	 * 
	 * @GetMapping("noticeRead2") //public String read(@RequestParam("board_id") int
	 * board_id, Model model, @ModelAttribute("creteria_vo") Criteria_vo
	 * criteria_vo) throws Exception{ public String read2(@RequestParam("board_id")
	 * int board_id, Board_user_vo board_user_vo, Model
	 * model, @ModelAttribute("creteria_vo") Criteria_vo criteria_vo, @RequestParam
	 * String search) throws Exception{ model.addAttribute("list",
	 * sharingService.list2(search)); model.addAttribute("read",
	 * sharingService.read(board_user_vo.getBoard_id()));
	 * model.addAttribute("creteria_vo", criteria_vo);
	 * 
	 * //댓글 목록 조회 List<Comm_user_vo> commList =
	 * sharingCommService.readComm(board_user_vo.getBoard_id());
	 * model.addAttribute("commList", commList); //System.out.println("commlist : "
	 * + commList);
	 * 
	 * return "user/sharingInformation/noticeMain"; }
	 */
	
	
	
	//게시글 내용 수정페이지 이동(뷰페이지)
	@GetMapping("noticeUpdate")
	public String noticeUpdate(@ModelAttribute Board_user_vo board_user_vo, Model model) throws Exception{
		
			System.out.println("VO : " + board_user_vo) ;
		
			model.addAttribute("update", sharingService.read(board_user_vo.getBoard_id()));
			
			System.out.println("read컨트롤러 : " + sharingService.read(board_user_vo.getBoard_id()));
			
			return "user/sharingInformation/noticeUpdate";
	}
	
	//게시글 내용 수정
	@PostMapping("noticeUpdate")
	public String update(@ModelAttribute Board_user_vo board_user_vo) throws Exception{
		System.out.println("보드 컨트롤러 업데이트 : " + board_user_vo);
		
		sharingService.update(board_user_vo);
		
		return "redirect:noticeMain";
		
	
	}

	//게시글 내용 삭제
	@PostMapping("noticeDelete")
	public String delete(Board_user_vo board_user_vo) throws Exception{
		
		sharingService.delete(board_user_vo.getBoard_id());
		return "redirect:noticeMain";
		
	}

	//게시글 없습니다. -> 사용안할거임.
	@GetMapping("noticeRNo")
	public String noticeRNo() {
			return "user/sharingInformation/noticeRNo";
	}
	
	//게시판 댓글 작성
	@PostMapping("commWrite")
	public String commWrite(Comm_user_vo comm_user_vo,RedirectAttributes rttr ) throws Exception {
		//System.out.println("comm_user_vo 컨트롤러1: " + comm_user_vo);

		sharingCommService.writeComm(comm_user_vo);
		rttr.addAttribute("board_id", comm_user_vo.getBoard_id());
		
		return "redirect:noticeRead";
	}
	
	
	//게시판 댓글 삭제
	@PostMapping("commDelete")
	public String commDelete(Comm_user_vo comm_user_vo,RedirectAttributes rttr) throws Exception{
		
		//System.out.println("삭제 : " + comm_user_vo);
		
		sharingCommService.deleteComm(comm_user_vo);
		rttr.addAttribute("board_id", comm_user_vo.getBoard_id());
		return "redirect:noticeRead";
		
	}
	
	//게시판 댓글 수정
//	@GetMapping("commUpdate")
//	public String commUpdate(@ModelAttribute Comm_user_vo comm_user_vo) throws Exception{
//		
//		return null;
//		
//	}
	
	
}

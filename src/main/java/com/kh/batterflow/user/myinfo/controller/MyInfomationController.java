package com.kh.batterflow.user.myinfo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.batterflow.user.myinfo.service.MyInfoService;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.VacationInfo_vo;
import com.kh.batterflow.vo.VacationType_vo;

@Controller
@RequestMapping("/myinfo") //나의정보
public class MyInfomationController {
	
	@Autowired MyInfoService myInfoService;
	
	//나의인사정보
	@GetMapping("/personinfo")
	public String myPersonnelInfo() {
		
		return "user/myInfo/myPersonnelInfo";
	}
	
	//나의휴가정보
	@GetMapping("/vacationinfo")
	public String myVacationInfo(Model model,  @ModelAttribute VacationType_vo vacationType_vo, @ModelAttribute VacationInfo_vo vacationInfo_vo, HttpSession session) throws Exception{
	//public String myVacationInfo(Model model,@RequestParam("user_id" ) int user_id, @ModelAttribute VacationType_vo vacationType_vo,@ModelAttribute VacationInfo_vo vacationInfo_vo,@ModelAttribute VacationKind_vo vacationKind_vo) throws Exception {
		UserClient_vo login = (UserClient_vo) session.getAttribute("login");
		//login.getUser_id();
		int user_id = login.getUser_id();
		//휴가내역 : 휴가종류 불러오기(selectBox)
		List<VacationType_vo> vacationTypeList = myInfoService.selectList(vacationType_vo);
		model.addAttribute("vacationTypeList", vacationTypeList);
	
		
		
		//휴가내역 : 휴가일수부여내역 list조회
		//System.out.println("컨트롤러 유저아이디 확인ㅇ: " + user_id);

		
		List<VacationInfo_vo> vacationInfoList =  myInfoService.apprList(user_id);
		
		//System.out.println("wpdklfjalkejw" +vacationInfoList);

		model.addAttribute("apprList", vacationInfoList);
		
		
		//휴가내역 : 휴가일수차감(사용_내역 list조회
		List<VacationInfo_vo> vacationInfoMList =  myInfoService.apprMList(user_id);
		
		//System.out.println("apprMList" +vacationInfoMList);
		
		//System.out.println("컨트롤러 vacationInfoMList 확인ㅇ: " + vacationInfoMList);
		
		model.addAttribute("apprMList", vacationInfoMList);
		
		
	//	VacationInfo_vo aa =  VacationInfo_vo.builder().user_id(user_id).build();
		
		
//		for(int i=0; i<vacationInfoList.size(); i++) {
//			VacationInfo_vo aa = VacationInfo_vo.builder().user_id(vacationInfoList.get(i).getUser_id()).vaca_info_id(vacationInfoList.get(i).getVaca_info_id()).vaca_appr_reason(vacationInfoList.get(i).getVaca_appr_reason()).vaca_appr_day(vacationInfoList.get(i).getVaca_appr_day()).vaca_appr_date(vacationInfoList.get(i).getVaca_appr_date()).build();
//			
//			
//			System.out.println("나오라아ㅣ러ㅣㅓ :" + aa);
//		}
		
//		System.out.println("컨트롤러2");
		//model.addAttribute("apprList", myInfoService.apprList(user_id));
		return "user/myInfo/myVacationInfo";
	}

	//나의휴가조
}

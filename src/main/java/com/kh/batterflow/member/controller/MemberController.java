package com.kh.batterflow.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.batterflow.member.service.MemberService;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("home")
	public String home(HttpSession session) {
		session.removeAttribute("msg");
		return "home";
	}
	
	@GetMapping("login")
	public String login(HttpSession session) {
		return "member/memberLogin";
	}
	
	@PostMapping("login") 
	public String login(
			Model model,
			@ModelAttribute UserClient_vo user,
			HttpSession session,
			RedirectAttributes rttr
			) {
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}

		Map<String, Object> result = memberService.memberLogin(user);
		log.info("result map info : {}", result);
		rttr.addFlashAttribute("msg", result.get("code"));
		if(result.get("login") != null) {
			if(result.get("code").equals("success")) {
				session.setAttribute("login", result.get("login"));
				return "redirect:home";
			} else if(result.get("code").equals("noMatchPw")){
			} else if(result.get("code").equals("noMatchEmail")) {
				log.info("result.get(\"code\"): {}", result.get("code"));
			}
		} else {
			return "redirect:login";
		}
		return "redirect:login";
	}
	
	@GetMapping("/join")
	public String join() {
		
		return "member/memberRegister";
	}
	
	@PostMapping("/join") 
	public String join(
			Model model,
			@ModelAttribute UserClient_vo user
			) {
		log.info("postjoin : {}", user);
		String result = memberService.memberJoin(user);
		model.addAttribute("msg", result);
		
		return "redirect:login";
	}
	@GetMapping("/memberinfofind")
	public String memberInfoFind() {
		
		return "member/memberPwdChoice";
	}
	
	@GetMapping("/pwdfind")
	public String pwdFind() {
		
		return "member/memberPwdFind";
	}
	
	@GetMapping("/emailfind")
	public String emailFind() {
		
		return "member/memberEmailFind";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
	

}

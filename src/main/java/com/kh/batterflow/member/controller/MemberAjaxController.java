package com.kh.batterflow.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.member.service.MemberAjaxService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/rest")
public class MemberAjaxController {
	
	@Autowired
	private MemberAjaxService memberAjaxService;
	
	@GetMapping("/email")
	public Map<String, Object> emailCheck(@RequestParam String email){
		Map<String, Object> emailMap = memberAjaxService.emailCheck(email);
		log.info("restMemberController 단에서 emailCheckMap : {} ", emailMap);
		return emailMap;
	}
	
	@PostMapping("/authsms")
	public Map<String, Object> authSmsCheck(@RequestParam Map<String, String> checkAuthInfo) {
		log.info("(/authsms)restMemberController 단에서 checkAuthInfo : {}", checkAuthInfo);
		Map<String, Object> result = memberAjaxService.checkAuthInfo(checkAuthInfo);
		log.info("restMemberController 단에서 result : {}", result);
		return result;
	}
	
	@PostMapping("/authemail")
	public Map<String, Object> authEmailCheck(@RequestParam Map<String, String> checkAuthNum) throws MessagingException{
		log.info("(/authemail)restMemberController 단에서 checkAuthNum : {}", checkAuthNum);
		Map<String, Object> result = memberAjaxService.checkAuthWithEmail(checkAuthNum);
		log.info("result : {}", result);
		return result;
	}
}

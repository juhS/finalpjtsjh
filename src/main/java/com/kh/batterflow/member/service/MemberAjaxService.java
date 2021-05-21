package com.kh.batterflow.member.service;

import java.util.Map;

import javax.mail.MessagingException;

public interface MemberAjaxService {
	//이메일 중복체크 비즈니스 로직 처리
	Map<String, Object> emailCheck(String email);
	//등록된 휴대폰 번호로 인증 번호를 찾고 맞으면 이메일 찾기
	Map<String, Object> checkAuthInfo(Map<String, String> checkAuthInfo);
	//등록된 이메일로 인증 번호를 보내고 맞으면 이메일 받기
	Map<String, Object> checkAuthWithEmail(Map<String, String> checkAuthNum) throws MessagingException;

}

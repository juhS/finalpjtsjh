package com.kh.batterflow.member.service;

import java.util.Map;

import com.kh.batterflow.vo.UserClient_vo;

public interface MemberService {
	//로그인 기능
	Map<String, Object> memberLogin(UserClient_vo user);
	//회원가입 기능
	String memberJoin(UserClient_vo user);
}

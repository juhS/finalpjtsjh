package com.kh.batterflow.member.dao;

import com.kh.batterflow.vo.UserClient_vo;

public interface MemberDao {
	//로그인 기능
	UserClient_vo login(UserClient_vo user);
	//회원가입 기능
	int join(UserClient_vo user);
}

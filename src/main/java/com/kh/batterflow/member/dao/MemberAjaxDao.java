package com.kh.batterflow.member.dao;

import com.kh.batterflow.vo.UserClient_vo;

public interface MemberAjaxDao {
	//이메일 중복체크 DB조회
	int emailCheck(String email);
	//전화번호로 해당하는 회원정보 찾기
	UserClient_vo checkPhone(String string);
	//이메일로 해당하는 회원정보 찾기
	UserClient_vo checkAuthWithEmail(String string);

}

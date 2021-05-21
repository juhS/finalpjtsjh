package com.kh.batterflow.user.myinfo.dao;

import java.util.Map;

import com.kh.batterflow.vo.UserClient_vo;

public interface MyInformationAjaxDao {
	//현재 비밀번호와 id 가지고 회원 한명 조회
	UserClient_vo selectUserWithId(Integer user_id);
	//user 비밀번호 변경
	int updateUserPwd(Map<String, Object> userIdWithPwd);

}

package com.kh.batterflow.member.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.member.dao.MemberDao;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Map<String, Object> memberLogin(UserClient_vo user) throws NullPointerException{
		UserClient_vo result = memberDao.login(user);
		String inputPw = user.getUser_pw();
		String code= "";
		String hasPw = "";
		Map<String, Object> total = new HashMap<>();
		
		if(result != null) {
			hasPw = result.getUser_pw();
			if(inputPw.equals(result.getUser_pw())) {
				code= "success";
				log.info("아이디,비번 모두 일치 : {}", result);
			} else {
				code = "noMatchPw";
			}
		} else {
			log.info("과연 실행이 될까?");
			code = "noMatchEmail";
		}
		log.info("code : {}", code);
		total.put("code", code);
		total.put("login", result);
		total.put("hasPw", hasPw);
		
		return total;
	}

	@Override
	public String memberJoin(UserClient_vo user) {
		int count = memberDao.join(user);
		String result = "";
		if(count == 0) {
			result = "회원가입에 실패하였습니다!";
		} else {
			result = "회원가입에 성공하였습니다!";
		}
		return result;
	}

}

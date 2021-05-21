package com.kh.batterflow.member.service;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.member.dao.MemberAjaxDao;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberAjaxServiceImpl implements MemberAjaxService{
	
	@Autowired
	private MemberAjaxDao memberAjaxDao;
	
	@Autowired
	private SendSMS sendSMS;
	
	@Autowired
	private EmailService emailService;
	
	@Override
	public Map<String, Object> emailCheck(String email) {
		int count = memberAjaxDao.emailCheck(email);
		
		Map<String, Object> result = null;
		result = new HashMap<>();
		result.put("count", count);
		log.info("이메일 중복체크 서비스단에서 : {} ", count);
		return result;
	}

	@Override
	public Map<String, Object> checkAuthInfo(Map<String, String> checkAuthInfo) {
		log.info("memberAjaxService 단에서 checkAuthInfo : {}", checkAuthInfo);
		UserClient_vo checkUser = memberAjaxDao.checkPhone(checkAuthInfo.get("checkNumber"));
		String resultCode = "";
		String phoneNumReplace = checkAuthInfo.get("checkNumber");
		phoneNumReplace = phoneNumReplace.replace("-", "");
		log.info("phoneNumReplace : {}", phoneNumReplace);
		int authNum = 0;
		Map<String, Object> resultMap = new HashMap<>();
		if(checkUser != null) {
			resultCode = "success";
			authNum = sendSMS.sendSMS("82", phoneNumReplace);
		} else {
			resultCode = "noMemberWithNumber";
		}
		resultMap.put("resultCode", resultCode);
		resultMap.put("authNum", authNum);
		resultMap.put("checkUser", checkUser);
		return resultMap;
	}

	@Override
	public Map<String, Object> checkAuthWithEmail(Map<String, String> checkAuthNum) throws MessagingException {
		UserClient_vo checkUserWithEmail = memberAjaxDao.checkAuthWithEmail(checkAuthNum.get("checkemail"));
		String resultCode = "";
		int authNum = 0;
		Map<String, Object> resultMap = new HashMap<>();
		if(checkUserWithEmail != null) {
			if(checkUserWithEmail.getUser_name().equals(checkAuthNum.get("checkname"))) {
				resultCode = "success";		
				authNum = emailService.sendCertEmail(checkAuthNum.get("checkemail"));
			} else {
				resultCode = "noMatchEmailAndName";
			}
		} else {
			resultCode = "noMemberWithEmail";
		}
		resultMap.put("resultCode", resultCode);
		resultMap.put("authNum", authNum);
		resultMap.put("checkUser", checkUserWithEmail);
		
		return resultMap;
	}

}

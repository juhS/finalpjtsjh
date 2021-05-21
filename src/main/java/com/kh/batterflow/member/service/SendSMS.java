package com.kh.batterflow.member.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class SendSMS {
	
	@Autowired
	private RandomService randomService;
	
	@Value("${sendsms.account-sid}")
	public String ACCOUNT_SID;
	@Value("${sendsms.auth-token}")
	public String AUTH_TOKEN;
	
	public int sendSMS(String country, String phoneNum) {
		
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		
		int authNum = randomService.randomNumber(100000, 999999);
		
		String sendTarg = "+" + country + phoneNum;
		
		String authMsg = "인증번호는 [" + authNum + "]" + "입니다";
		
		Message message = Message.creator(
				new PhoneNumber(sendTarg),
				new PhoneNumber("+14197922966"),
				authMsg).create();
		
		log.info("사용자에게 보낸 메세지 : {}", message);
		return authNum;
	}
	
//	public static int ranRange(int n1, int n2) {
//		return (int) (Math.random() * (n2 - n1 + 1)) + n1;
//	}
//	@Value("${sendsms.account-sid}")
//	public void setAccountSid(String accountSid) {
//		ACCOUNT_SID = accountSid;
//	}
//	
//	@Value("${sendsms.auth-token}")
//	public void setAuthToken(String authToken) {
//		AUTH_TOKEN = authToken;
//	}

}

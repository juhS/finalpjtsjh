package com.kh.batterflow.member.service;

import javax.mail.MessagingException;

public interface EmailService {
	//이메일로 인증번호 발송
	int sendCertEmail(String email) throws MessagingException;
}

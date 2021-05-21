package com.kh.batterflow.member.service;

import java.io.File;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class GmailService implements EmailService{
	
	@Autowired
	private RandomService randomService;
	
	@Autowired
	private JavaMailSender sender;
	
	@Value("${email.username}")
	private String sendFrom;
	
	@Override
	public int sendCertEmail(String email) throws MessagingException {
		
		int authNum = randomService.randomNumber(100000, 999999);
		String content = "<img src='cid:logo.png'><br>"
				+ "<h2>비밀번호 찾기 인증 이메일입니다. </h2><br>"
				+ "<h1>인증 번호는 [" + authNum + "] 입니다. </h1><br>"
				+ "<h2>인증 번호를 홈페이지의 입력칸에 <br><br>"
				+ "알맞게 입력해주세요.</h2><br>"
				+ "<img src='cid:logo.png'>";
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		helper.setFrom(sendFrom);
		helper.setSubject("Better Flow 인증번호 메일입니다.");
		String[] to = {email};
		helper.setTo(to);
		helper.setText(content,true);
		helper.addInline("logo.png", new ClassPathResource("images/logo.png"));
		sender.send(message);

		return authNum;
	}

}

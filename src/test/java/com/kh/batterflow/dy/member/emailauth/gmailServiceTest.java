package com.kh.batterflow.dy.member.emailauth;

import javax.mail.MessagingException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kh.batterflow.dy.member.SendSMSTest;
import com.kh.batterflow.member.service.EmailService;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Slf4j
@WebAppConfiguration
public class gmailServiceTest {
	//목표 : GmailService의 sendCertification() 테스트
	
	@Autowired
	private EmailService emailService;
	
	@Value("${email.username}")
	private String sendFrom;
	
	@Test
	public void test() throws MessagingException {
		int authNum = emailService.sendCertEmail("dongyub010@naver.com");
		log.info("authNum : {}", authNum);
		log.info("sendFrom : {}", sendFrom);
	}

}

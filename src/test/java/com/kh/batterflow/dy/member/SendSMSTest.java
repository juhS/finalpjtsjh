package com.kh.batterflow.dy.member;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kh.batterflow.member.service.RandomService;
import com.kh.batterflow.member.service.SendSMS;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Slf4j
@WebAppConfiguration
public class SendSMSTest {

	@Autowired
	private SendSMS sendSMS;
	
	@Autowired
	private RandomService randomService;
	
	@Test
	public void test() {
		int authNum = sendSMS.sendSMS("82", "01088525540");
//		int authNum = randomService.randomNumber(100000, 999999);
		log.info("auth : {}", authNum);
	}
	
	
}

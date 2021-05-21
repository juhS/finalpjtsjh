package com.kh.batterflow.dy.member;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kh.batterflow.member.service.SendSMS;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@WebAppConfiguration
public class SendSMSTest02 {
	
	@Autowired
	private SendSMS sms;
	
	@Test
	public void test2() {
//		sms.test();
//		log.info("sms.getACCOUNT_SID() : {}", sms.getACCOUNT_SID());
//		log.info("sms.getAUTH_TOKEN() : {}", sms.getAUTH_TOKEN());
//		
//		System.out.println(sms.getACCOUNT_SID());
//		System.out.println(sms.getAUTH_TOKEN());
	}
}

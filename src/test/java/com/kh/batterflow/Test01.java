package com.kh.batterflow;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kh.batterflow.member.service.SendSMS;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@WebAppConfiguration
public class Test01 {
	
	@Autowired
	private SendSMS sms;

	@Test
	public void test() {
		//assertNotNull(sms);
//		System.out.println(sms.getACCOUNT_SID1());
//		System.out.println(sms.getAUTH_TOKEN1());
	}
	
}

package com.kh.batterflow.dy.member;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Slf4j
@WebAppConfiguration
public class MemberRegisterTest01 {
	
	@Autowired
	SqlSession sqlSession;
	
	//목표 : 회원 가입 구현
	@Test
	public void Test() {
		UserClient_vo user = UserClient_vo.builder()
				.user_id(0).user_name("관리자").user_intro("없음")
				.user_skill("없음").user_detail("상세 정보").user_phone("02-888-5555")
				.user_telphone("010-1234-5678").user_address("인천광역시 계양구 계양동")
				.user_birth("950201").user_gender("M").user_marry("Y")
				.user_status("재직").user_detail_job("미배정").user_job("미배정")
				.user_pw("admin").user_email("admin@bf.co.kr")
				.dept_id(0).author_id(0).emp_type_id(0)
				.job_id(0).cp_id(0)
			.build();
		
		int count = sqlSession.insert("member.join", user);
		log.info("count : {} ", count);
		
	}

}

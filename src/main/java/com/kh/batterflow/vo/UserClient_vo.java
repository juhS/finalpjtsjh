package com.kh.batterflow.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder

//User 테이블
public class UserClient_vo {
	private String user_name;		//이름		NOTNULL	VARCHAR2(50BYTE)
	private String user_email;		//이메일		NOTNULL	VARCHAR2(30BYTE)
	private String user_pw;			//비밀번호		NOTNULL	VARCHAR2(30BYTE)
	private int user_id;			//사용자ID	NOTNULL	
		
	//null 들어가도 되는 컬럼들
	private String user_intro;		//자기소개		NULL	VARCHAR2(1500BYTE)
	private String user_skill;		//보유기술		NULL	VARCHAR2(1500BYTE)
	private String user_detail;		//상세정보		NULL	VARCHAR2(1500BYTE)
	private String user_detail_job;	//상세업무		NULL	VARCHAR2(300BYTE)
	private String user_phone;		//전화번호		NULL	VARCHAR2(20BYTE)
	
	private String user_telphone;	//휴대전화		NOTNULL	VARCHAR2(20BYTE)
	private String user_address;	//주소		NOTNULL	VARCHAR2(300BYTE)
	private String user_gender;		//성별		NOTNULL	CHAR(3BYTE)
	private String user_birth;		//생년월일		NOTNULL	VARCHAR2(20BYTE)
	private String user_marry;		//혼인여부		NOTNULL	CHAR(3BYTE)
	private String user_status;		//조직원상태	NOTNULL	VARCHAR2(30BYTE)
	private String user_join_date;	//입사일		NOTNULL	
	private String user_job;		//상세업무		NULL	VARCHAR2(300BYTE)
	
	//외래키들
	private int dept_id;			//부서코드		NOTNULL	
	private String dept_name;
	private int author_id;			//권한번호		NOTNULL
	private String author_name;
	private int emp_type_id;		//고용형태ID	NOTNULL
	private int job_id;				//직위ID		NOTNULL
	private int cp_id;				//회사ID		NOTNULL
	
	
	private List<UserClient_vo> list; // 유저 정보 
}

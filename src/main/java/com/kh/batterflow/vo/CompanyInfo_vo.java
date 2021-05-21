package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//회사 정보 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class CompanyInfo_vo {
	private int cp_id;	//회사 id
	private String cp_name;	//회사 이름
	private String cp_address;	//회사 주소
	private String cp_phone;	//회사 연락처
	private String cp_ceo;		//회사 대표 이름
	private String cp_introduce;	//회사 소개 내용
	private Date cp_establish;	//회사 설립일
	private String cp_slogan;	//회사 슬로건
}

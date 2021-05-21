package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//증명서 발급 내역 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class CertIssueRecord_vo {
	private int cert_issue_id;	//증명서 발급 id
	private String cert_title;	//증명서 제목
	private Date cert_request_date;	//증명서 신청일
	private Date cert_appr_date;	//증명서 승인일시
	private String cert_request_reason;	//증명서 신청사유
	//여기서부터 외래키
	private int cert_id;	//작성자
	private int user_id;	//승인자
}
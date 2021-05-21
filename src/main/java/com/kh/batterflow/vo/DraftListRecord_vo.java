package com.kh.batterflow.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 기안서가 저장되는 형식 테이블
public class DraftListRecord_vo {

	private int draft_history_id;				// 기안서 이력 내역 ID 	(PK)
	private int user_id;						// 사용자 ID		(FK)
	private Date draft_pay_date;				// 기안서 결재일	
	private int draft_rec_no;					// 기안서 이력 번호	(FK)
	private String user_name;					// (유빈) 사용자 이름
}

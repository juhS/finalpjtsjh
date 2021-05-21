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
// 기안서들의 이력이 나와있는 기안서 이력테이블
public class DraftRecord_vo {
	private int draft_rec_no ;					// 기안서 이력번호 		(PK)
	private String draft_rec_title;				// 기안서 제목	
	private Date draft_rec_regist_date;			// 기안서 최초 등록일
	private Date draft_rec_final_appr;			// 최종 승인일
	private String draft_rec_status;			// 기안서 상태
	private int draft_no;						// 기안서 양식 번후 		(FK)
}

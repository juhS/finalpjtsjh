package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Mydraft_vo {

	private String draft_rec_status;						// 문서 상태
	private String draft_rec_title;							// 문서제목
	private String user_write_name;							// 작성자 이름
	private Date draft_initial_regist_date;					// 작성한 날짜
	private String user_final_name;							// 최종 결재자 이름
	private Date draft_rec_final_appr;						// 최종 결재 일자
	private int draft_no;									// 문서번호
	private int startindex;									// 시작지점
	private int pagesize;									// 몇개씩 볼껀지
	private int user_id ;									// 현재 무슨 유저인지
	private int page;										// StartInedx +  PageSize
}

package com.kh.batterflow.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Custom_draftTemplate_vo {
	private int draft_no;					// 기안서 양식 번호		(PK)	
	private String draft_title;				// 기안서 양식 제목
	private Date draft_initial_regist_date;	// 기안서 양식 최초 등록일
	private Date draft_modify_date;			// 기안서 양식 수정일
	private String draft_explain;			// 기안서 양식 설명
	private int user_write_id;				// 기안서 작성자			(FK)
	private int user_update_id;				// 기안서 수정자			(FK)
	private int docu_cate_id;				// 문서 카테고리 ID		(FK)
	private String draft_content;			// 기안서 양식 내용
	private String draft_url;				// 기안서 양식 URL
	
	private String new_initial_regist_date;
	private String default_docu;			//기본 파일 양식 유무
	private String user_writer_name;		//기안신청자=기안작성자
	private String job_name;				//직위/직책
	private String dept_name;				//부서명
	
}

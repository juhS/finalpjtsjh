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
// 기안서의 관련자들이 어떤 관련자인지 보여주는 테이블
public class DraftRelated_vo {
	private int draft_related_person_id ;			// 기안서 관련자 ID		(PK)
	private String draft_separate;					// 기안서 구분			(FK)
	private int draft_rec_no;						// 기안서 이력 번호		(FK)
	private int user_id;							// 사용자 ID			(FK)
	private int draft_related_order;				// 기안서 결재 순서
	
	
	
	private String user_name;						// 관련자 이름	
	private int payment_yn;							// 결재 완료
}

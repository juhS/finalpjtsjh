package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 기안서 문서 제목규칙 설정을 위한  규칙들을 적용하기 위해 필요한 테이블
public class DraftTitleRuleCord_vo {
	private int docu_title_rule_his_id;				// 제목 규칙 이력 ID		(PK)
	private String docu_title_rule_order;			// 순서
	private int docu_title_rule_id;					// 문서 제목 규칙 ID		(FK)
	private int draft_rec_no;						// 기안서 이력 번호		(FK)
}

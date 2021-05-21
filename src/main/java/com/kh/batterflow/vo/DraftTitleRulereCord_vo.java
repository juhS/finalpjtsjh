package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DraftTitleRulereCord_vo {
	private int docu_title_rule_his_id; //제목 규칙 이력 ID
	private String docu_title_rule_order; // 순서
	private int docu_title_rule_id; // 문서 제목 규칙 ID
	private int draft_rec_no; // 기안서 이력 번호
	
	
	
}

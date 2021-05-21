package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 기안서 문서 제목규칙 설정을 위한 테이블
public class DraftTitleRule_vo {
	private int docu_title_rule_id;					// 문서 제목 규칙 ID		(PK)
	private String docu_title_rule_name;			// 문서 제목 규칙명
}

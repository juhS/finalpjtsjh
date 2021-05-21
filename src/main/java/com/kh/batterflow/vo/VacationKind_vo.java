package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

//휴가종류 테이블
public class VacationKind_vo {
	private int vaca_sort_id;			//휴가분류 ID	NOTNULL
	private String vaca_sort_content;	//분류내용		NOTNULL	VARCHAR2(60 BYTE)
}

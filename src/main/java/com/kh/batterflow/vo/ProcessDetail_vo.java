package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

//프로세스테이블
public class ProcessDetail_vo {
	
	private int pd_id;			//프로세스내역 ID	NOTNULL
	private String appr_type;	//결재자종류  		NOTNULL	CHAR 9BYTE
	private int user_id;		//사용자 ID		NOTNULL
	private int p_id;			//프로세스 ID		NOTNULL
	private int draft_dec_id;	//기안서 이력 번호	NOTNULL
}

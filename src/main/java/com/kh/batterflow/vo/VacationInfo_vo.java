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

//휴가정보 테이블
public class VacationInfo_vo {
	private int vaca_info_id;			//휴가정보 ID		NOTNULL	
	private String vaca_reason;		 	//휴가사유			NULL		VARCHAR2(300 BYTE)
	private String vaca_period;		 	//휴가기간			NULL		VARCHAR2(30 BYTE)
	private String vaca_appr_reason; 	//휴가부여사유		NULL		VARCHAR2(300 BYTE)
	private int vaca_usage_day;			//사용한 휴가 일수	NULL
	private	int vaca_appr_day;			//휴가 부여 일수	NULL
	private int vaca_kind_id;			//휴가종류 ID		NOTNULL
	private int vaca_sort_id;			//휴가분류 ID		NOTNULL
	private int user_id;				//사용자 ID
	private Date vaca_appr_date;        //휴가부여일		null 
	
	private String vaca_kind_name;	//휴가종류 이름		NOTNULL	VARCHAR2(60BYTE)
}

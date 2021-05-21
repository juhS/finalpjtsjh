package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

//인사정보 - 프로젝트 : 관리자, 사용자 공통 테이블
public class ProjectInfo_vo {
	private int proj_info_id;		//프로젝트 정보 ID	NULL
	private String proj_info;		//프로젝트 정보		NOTNULL	VARCHR2 100BYTE
	private String place_conduct;	//수행처			NOTNULL VARCHR2 60BYTE
	private String proj_period;		//프로젝트 기간		NOTNULL VARCHR2 30BYTE
	private String explain;			//설명			NULL	VARCHR2 150BYTE
	private int user_id;			//사용자 ID		NOTNULL
	
}

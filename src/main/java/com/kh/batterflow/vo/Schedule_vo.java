package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

//일정관리 테이블
public class Schedule_vo {
	private int schedule_id;		//일정 참석자 ID	NOTNULL
	private int user_id;			//사용자 ID		NOTNULL
	private int sche_mg_info_id;	//일정관리 정보 ID	NOTNULL

}

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

//일정관리 테이블
public class ScheduleManage_vo {
	private int sche_mg_info_id;	//일정관리 정보 ID	NOTNULL
	private Date start_time;		//시작시간			NOTNULL
	private Date end_time;			//종료시간			NOTNULL
	private String title;			//제목			NOTNULL	VARCHAR2(60 BYTE)
	private String location;		//장소			NOTNULL	VARCHAR2(60 BYTE)
	private String content;			//내용			NOTNULL VARCHAR2(300 BYTE)
	private int number;				//사용자ID		NOTNULL
}

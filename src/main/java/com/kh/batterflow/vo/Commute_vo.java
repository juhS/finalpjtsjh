package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//출퇴근 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Commute_vo {
	private int commute_code;	//출퇴근 코드
	private Date commute_in_time;	//출근시간
	private Date commute_out_time;	//퇴근시간
	private String commute_status;	//상태
	//여기서부터 외래키
	private int user_id;	//사용자 id
}

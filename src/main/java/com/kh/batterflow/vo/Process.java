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
public class Process {
	private int p_id;	//프로세스 ID
	private String p_name;	//프로세스 이름
	private String p_explain;	//프로세스 설명
	private Date p_modify_date;	//수정일
	private String p_type;	//프로세스 구분
	private int user_id;	//사용자 ID
	
	
	
	
	
	
	
}

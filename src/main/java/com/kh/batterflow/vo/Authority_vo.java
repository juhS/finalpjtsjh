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
public class Authority_vo {

	private int author_id;	//권한번호 
	private String author_name; //권한이름 	
	private Date author_create_date;//권한생성일 	
	private Date author_appr_date;//권한부여일
	
}

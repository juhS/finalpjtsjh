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
public class AwardRecord_vo {
	
	private int award_id; //수상 이력정보 ID
	private String award_name; //상훈명 	
	private String issue_agency;//발급기관
	private Date award_day;//수상일
	private String explain;//설명
	private int user_id;//사용자 ID
	
	
	

}

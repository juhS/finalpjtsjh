package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EdureCord {
	private int edu_record_id;	//교육 이력정보 ID
	private String edu_curriculum; //교육 과정명
	private String edu_complete_status; //교육 수료 상태
	private String edu_period; //교육 기간
	private String edu_place; //교육 장소
	private int user_id; //사용자ID
	
	
	
	
	
	
}

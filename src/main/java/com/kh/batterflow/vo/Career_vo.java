package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Career_vo {

	private int career_id; //경력정보 ID
	private String company_name;//회사명 	
	private String job_position;//직위 	
	private String work_period;//근무기간 	
	private String explain;//설명
	private int user_id;//사용자 ID 	
}

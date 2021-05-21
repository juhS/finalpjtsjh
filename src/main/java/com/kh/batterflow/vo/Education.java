package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Education {
	private int edu_id;	//학력정보 ID
	private String school_name;	//학교명
	private String is_enroll; //재학여부
	private String enroll_perlod; //재학 기간
	private String major; //전공
	private int score; //학점
	private int user_id; //사용자ID
	
}

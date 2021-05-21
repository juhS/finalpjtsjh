package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PatentInfo {
	private int patent_id;	//특허 정보 ID
	private String patent_name;	//특허명
	private String patent_office;	//특허청
	private String patent_status;	//특허 상태
	private String patent_inventor;	//발명자
	private String patent_url;	//특허 URL
	private String explain;	//설명
	private int user_id;	//사용자 ID
	
	
	
	
	
	
	
}

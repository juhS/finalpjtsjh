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
public class Certificate_vo {

	private int cert_id;//증명서 ID	
	private String cert_title;//증명서 제목 	
	private Date cert_regist_date;//등록일 	
	private String cert_explain;//양식 설명 	
	private int user_id;//작성자 	
	
	
}

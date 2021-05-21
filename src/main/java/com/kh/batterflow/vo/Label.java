package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Label {
	private int label_id;	//라벨ID
	private String label_name;	//라벨명
	private String label_color;	//라벨색상
	private int user_id;	//사용자 ID
	private int draft_rec_no;	//기안서 이력 번호
	
	
	
	
	
}

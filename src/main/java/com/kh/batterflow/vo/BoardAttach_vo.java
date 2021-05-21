package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardAttach_vo {
	private int bf_id; //게시판 파일 ID	
	private String bf_origin_name; //게시판 파일 원래 이름 
	private String bf_alter_name;//게시판 파일 변경된 이름 	
	private String pf_path;//파일 경로 	
	private int board_id;//게시판 ID	
	
	
	
}

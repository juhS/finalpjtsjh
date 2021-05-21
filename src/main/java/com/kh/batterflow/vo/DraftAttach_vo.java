package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 기안서 문서에 첨부되는 파일(첨부파일)
public class DraftAttach_vo {	
	private int draft_file_id;						//기안 파일 ID				(PK)
	private String draft_file_origin_name;			// 기안서 파일 원래 이름
	private String draft_file_alter_name;			// 기안서 파일 변경된 이름
	private String draft_file_path;					// 파일경로
	private String draft_file_separate;				// 파일 구분
	private int draft_rec_no;						// 기안서 이력번호			(FK)
}

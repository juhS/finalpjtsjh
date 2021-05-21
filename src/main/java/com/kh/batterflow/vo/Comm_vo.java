package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//댓글 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Comm_vo {
	private int comm_id;	//댓글 id
	private String comm_content;	//댓글 내용
	private Date comm_create_time;	//댓글 작성 시간
	//여기서부터 외래키
	private int board_id;	//게시판테이블 id
}

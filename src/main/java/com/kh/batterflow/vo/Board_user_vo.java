package com.kh.batterflow.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board_user_vo {
	
	private int board_id; //게시판 ID 
	private String board_title;//게시판제목
	private Date board_create_date;//작성일
	private String board_content;//게시판 내용
	private int board_hits;//조회수 	
	private String board_status;//게시글상태_Y_N
	private String board_devide_id;//게시판 구분 	
	private int user_id;//사용자ID
	private String top_fixed; //상단 고정 유무(Y/N) DEFAULT 'N'
	private String user_name;		//이름		NOTNULL	VARCHAR2(50BYTE)
	

}

package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//채팅방 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Chat_vo {
	private int chat_id;	//채팅방 id
	private String chat_name;	//채팅방 이름
}

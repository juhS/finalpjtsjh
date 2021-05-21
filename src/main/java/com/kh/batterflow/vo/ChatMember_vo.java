package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//채팅방 구성원 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ChatMember_vo {
	private int chat_member_id;	//채팅방 구성원 번호
	//여기서부터 외래키
	private int user_id;	//사용자테이블 id
	private int chat_id;	//채팅방테이블 id
}

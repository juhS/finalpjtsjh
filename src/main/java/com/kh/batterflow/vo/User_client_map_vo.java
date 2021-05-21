package com.kh.batterflow.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 한번에 가져올려고 만드는 user_client_map_vo
public class User_client_map_vo {
	private List<UserClient_vo> list;
}

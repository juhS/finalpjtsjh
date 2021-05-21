package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor
@NoArgsConstructor @Builder
public class DraftTitleOrder_vo {
	private int draft_title_order_id;
	private String draft_title_order_name;
	private String draft_title_order_choice;
}

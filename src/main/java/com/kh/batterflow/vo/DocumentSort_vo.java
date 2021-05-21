package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DocumentSort_vo {

	private int selected_menu_value;			// 양식파일화면에서 선택한 카테고리 value
	private String selected_sort;				// 양식파일화면에서 선택한 정렬 기준
	
}

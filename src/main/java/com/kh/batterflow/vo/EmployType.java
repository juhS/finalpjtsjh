package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmployType {
	private int emp_type_id;	//고용 형태 ID
	private String emp_type_name;	//고용 형태 명
	
}

package com.kh.batterflow.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//부서 테이블 vo
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Dept_vo {
	private int dept_id;	//부서코드
	private String dept_name;	//부서명
}

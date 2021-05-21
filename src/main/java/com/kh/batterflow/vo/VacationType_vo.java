package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

//휴가종류 타입?
public class VacationType_vo {
	private int vaca_kind_id;		//휴가종류 ID		NOTNULL
	private String vaca_kind_name;	//휴가종류 이름		NOTNULL	VARCHAR2(60BYTE)
}
 
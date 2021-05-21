package com.kh.batterflow.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
// 유저와 관리자가 공통으로 사용하는 문서카테고리를 위한 테이블
public class DocuCategory_vo {

	private int docu_cate_id;			// 문서 카테고리 ID		(PK)
	private String docu_cate_name;		// 문서명				
	private String default_or_new;		// 문서 카테고리 삭제유무
    private int under_category;			// 하위 문서 카테고리 
}

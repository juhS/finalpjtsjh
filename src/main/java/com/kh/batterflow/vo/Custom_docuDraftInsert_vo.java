package com.kh.batterflow.vo;

import java.util.List;
import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Custom_docuDraftInsert_vo {
	private String docuCategory;
	private List<DraftFile_vo> checkedDraftNo;

}

package com.kh.batterflow.admin.shared.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class AdminSharedAjaxDaoImpl implements AdminSharedAjaxDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<DocuCategory_vo> docuCategoryList() {
		List<DocuCategory_vo> cateList = sqlSession.selectList("shared.cateList");
		
		return cateList;
	}

	@Override
	public List<DraftFile_vo> draftFileList() {
		List<DraftFile_vo> draftList = sqlSession.selectList("shared.draftList");
		return draftList;
	}

	@Override
	public DocuCategory_vo reportCategory(Map<String, String> divText) {
		DocuCategory_vo reportCategory = sqlSession.selectOne("shared.reportCategory", divText);
		return reportCategory;
	}

	@Override
	public List<DraftFile_vo> reportDraftList(DocuCategory_vo reportCategory) {
		log.info("reportCategory.getDocu_cate_id() : {}", reportCategory.getDocu_cate_id());
		//int num = reportCategory.getDocu_cate_id();
		List<DraftFile_vo> reportDraftList = sqlSession.selectList("shared.reportDraftList", reportCategory);
		return reportDraftList;
	}
	
	@Override
	public DocuCategory_vo docuCategorySelectName(int cateNum) {
		return sqlSession.selectOne("shared.docuCateSelectName", cateNum);
	}

	@Override
	public int docuDraftInsert(Map<String, Object> cateWithDraftVoMap) {
		return sqlSession.insert("shared.draftCategoryInsert", cateWithDraftVoMap);
	}
	
	//사용안함
	@Override
	public DocuCategory_vo docuDraftIsCate(Map<String, Object> cateAndDraftMap) {
		return sqlSession.selectOne("shared.docuDraftIsCate", cateAndDraftMap);
	}
	
	//사용안함
	@Override
	public DraftFile_vo draftOneSelect(Map<String, Object> checkedDraftNo) {
		return sqlSession.selectOne("shared.draftSelectNo", checkedDraftNo);
	}

	@Override
	public int draftInCate(Map<String, Object> cateWithDraftVoMap) {
		return sqlSession.selectOne("shared.cateWithDraftCount", cateWithDraftVoMap);
	}

}

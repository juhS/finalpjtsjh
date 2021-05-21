package com.kh.batterflow.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftTitleOrder_vo;
import com.kh.batterflow.vo.DraftTitleRule_vo;
import com.kh.batterflow.vo.DraftTitleRulereCord_vo;

@Repository
public class AdminAjaxDaoImpl implements AdminAjaxDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int changeCateName(Map<String, Object> newNameWithId) {
		return sqlSession.update("adminDocu.changeDefaultName",newNameWithId);
	}

	@Override
	public int newCateNameAdd(Map<String, Object> newNameadd) {
		return sqlSession.insert("adminDocu.newCateNameAdd", newNameadd);
	}

	@Override
	public int delCategory(Map<String, Object> delCate) {
		return sqlSession.delete("adminDocu.delCategory", delCate);
	}

	@Override
	public int delSecondCategory(Map<String, Object> delCate) {
		return sqlSession.delete("adminDocu.delSecondCategory", delCate);
	}

	@Override
	public DocuCategory_vo duplicateCheck(Map<String, Object> newNameadd) {
		return sqlSession.selectOne("adminDocu.duplicateCheck", newNameadd);
	}

	@Override
	public DocuCategory_vo duplicateCheckWithName(Map<String, Object> updateCate) {
		return sqlSession.selectOne("adminDocu.duplicateCheckWithName", updateCate);
	}

	@Override
	public List<DraftFile_vo> draftWithCateMap(Map<String, Object> map) {
		return sqlSession.selectList("adminDocu.draftWithCateListNew", map);
	}

	@Override
	public List<DraftFile_vo> draftWithCateMapAll(Map<String, Object> map) {
		return sqlSession.selectList("adminDocu.draftListNew", map);
	}

	@Override
	public int draftFileSeqNumberGet() {
		return sqlSession.selectOne("adminDocu.draftFileSeq");
	}

	@Override
	public int draftCopyAfterInsert(Map<String, Object> insertAndSelect) {
		return sqlSession.insert("adminDocu.draftCopyAfterInsert", insertAndSelect);
	}

	@Override
	public DraftFile_vo draftCopyAfterSelect(int pkNum) {
		return sqlSession.selectOne("adminDocu.draftCopyAfterSelect", pkNum);
	}

	@Override
	public List<DraftTitleRule_vo> draftTitleRuleLoad() {
		return sqlSession.selectList("adminDocu.draftTitleRuleLoad");
	}

	@Override
	public DraftTitleRulereCord_vo titleRuleOrder() {
		return sqlSession.selectOne("adminDocu.titleRuleOrder");
	}

	@Override
	public int titleRuleOrderUpdate(String orderText) {
		return sqlSession.update("adminDocu.titleRuleOrderUpdate", orderText);
	}

	@Override
	public void draftExplainUpdate(Map<String, String> textAreaVal) {
		sqlSession.update("adminDocu.draftExplainUpdate", textAreaVal);
		
	}

	@Override
	public int draftFileUpdate(Map<String, Object> map) {
		return sqlSession.update("adminDocu.draftFileUpdate", map);
	}

}

package com.kh.batterflow.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Custom_draftTemplate_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.UserClient_vo;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<DocuCategory_vo> docuCategoryAll() {
		return sqlSession.selectList("adminDocu.cateList");
	}

	@Override
	public List<DraftFile_vo> draFileAll() {
		return sqlSession.selectList("adminDocu.draftList");
	}

	@Override
	public List<DraftFile_vo> draFileAllNew() {
		return sqlSession.selectList("adminDocu.draftListNew");
	}

	@Override
	public List<DocuCategory_vo> docuCategoryAllNew() {
		return sqlSession.selectList("adminDocu.cateListNew");
	}

	@Override
	public DocuCategory_vo docuCategoryDefault() {
		return sqlSession.selectOne("adminDocu.cateDefault");
	}

	@Override
	public List<UserClient_vo> userClientAll() {
		return sqlSession.selectList("adminDocu.userClientAll");
	}

	@Override
	public Custom_draftTemplate_vo docuTemplateSelect(String draft_id) {
		return sqlSession.selectOne("adminDocu.docuTemplateSelect", draft_id);
	}

}

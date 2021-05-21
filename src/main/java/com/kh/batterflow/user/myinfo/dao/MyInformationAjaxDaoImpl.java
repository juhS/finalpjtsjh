package com.kh.batterflow.user.myinfo.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.UserClient_vo;

@Repository
public class MyInformationAjaxDaoImpl implements MyInformationAjaxDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserClient_vo selectUserWithId(Integer user_id) {
		return sqlSession.selectOne("myinfo.idwithpwd", user_id);
	}

	@Override
	public int updateUserPwd(Map<String, Object> userIdWithPwd) {
		return sqlSession.update("myinfo.changepwd", userIdWithPwd);
	}

}

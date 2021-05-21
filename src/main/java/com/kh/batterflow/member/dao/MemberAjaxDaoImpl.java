package com.kh.batterflow.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.UserClient_vo;

@Repository
public class MemberAjaxDaoImpl implements MemberAjaxDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int emailCheck(String email) {
		int count = sqlSession.selectOne("member.find", email);
		return count;
	}

	@Override
	public UserClient_vo checkPhone(String string) {
		UserClient_vo checkUser = sqlSession.selectOne("member.findwithphone", string);
		return checkUser;
	}

	@Override
	public UserClient_vo checkAuthWithEmail(String string) {
		UserClient_vo checkUser = sqlSession.selectOne("member.findwithemail", string);
		return checkUser;
	}

}

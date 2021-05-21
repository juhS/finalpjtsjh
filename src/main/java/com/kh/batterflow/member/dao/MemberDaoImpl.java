package com.kh.batterflow.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserClient_vo login(UserClient_vo user) {
		UserClient_vo result = sqlSession.selectOne("member.login", user);
		log.info("result : {}", result);
		return result;
	}

	@Override
	public int join(UserClient_vo user) {
		int count = sqlSession.insert("member.join", user);
		log.info("count : {} ", count);
		return count;
	}

}

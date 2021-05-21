package com.kh.batterflow.admin.organizationStructor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Repository 
public class UserClientDaoImpl implements UserClientDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertUserClient(UserClient_vo userClient) {

		sqlSession.insert("userClient.insert", userClient);
	}

	@Override
	public List<UserClient_vo> selectUserClient(UserClient_vo userClient) {

		List<UserClient_vo>userClientList = sqlSession.selectList("userClient.list", userClient);
		
		System.out.println("값뭐냐 뭐냐아아아 !!! : " + userClientList.toString());
		
		return userClientList;
	}
 
	@Override
	public void deleteList(UserClient_vo userClient) {

		sqlSession.delete("userClient.delete", userClient);
	}

	@Override
	public List<UserClient_vo> searchUserClient(UserClient_vo userClient) {

		List<UserClient_vo> userClinet = sqlSession.selectList("userClient.search", userClient);
		
		return userClinet;
	}

	@Override
	public List<UserClient_vo> selectUserClient_tb(UserClient_vo userClient_vo) {

		List<UserClient_vo> userClientTb = sqlSession.selectList("userClient.list_tb", userClient_vo);
		
		
		return userClientTb;
	}

	@Override
	public List<UserClient_vo> editEmail(UserClient_vo userClient) {
		
		List<UserClient_vo> userClientEmail = sqlSession.selectOne("userClient.edit", userClient);
		return userClientEmail;
	}

	
}

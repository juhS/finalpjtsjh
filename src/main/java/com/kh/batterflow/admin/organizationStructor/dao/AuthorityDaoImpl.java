package com.kh.batterflow.admin.organizationStructor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Authority_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class AuthorityDaoImpl implements AuthorityDao{
 
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<Authority_vo> authorityList() {

		List<Authority_vo>authorityList = sqlSession.selectList("authorityList.list_name");
		
		return authorityList;
		
	}

}

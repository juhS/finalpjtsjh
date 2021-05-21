package com.kh.batterflow.admin.organizationStructor.dao;

import java.util.List;

import com.kh.batterflow.vo.UserClient_vo;

public interface UserClientDao {

	void insertUserClient(UserClient_vo userClient);

	List<UserClient_vo> selectUserClient(UserClient_vo userClient);

	void deleteList(UserClient_vo userClient);
 
	//search
	List<UserClient_vo> searchUserClient(UserClient_vo userClient);

	//table List 
	List<UserClient_vo> selectUserClient_tb(UserClient_vo userClient_vo);

	List<UserClient_vo> editEmail(UserClient_vo userClient);

	

	

}

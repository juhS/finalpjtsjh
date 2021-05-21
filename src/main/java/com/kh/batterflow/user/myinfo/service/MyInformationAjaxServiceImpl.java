package com.kh.batterflow.user.myinfo.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.user.myinfo.dao.MyInformationAjaxDao;
import com.kh.batterflow.vo.UserClient_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MyInformationAjaxServiceImpl implements MyInformationAjaxService{
	
	@Autowired
	private MyInformationAjaxDao myInformationAjaxDao;
	
	@Override
	public String changePwd(Map<String, String> myInfomap) {
		String result = "";
		log.info("myInfomap.get('user_id') : {}", myInfomap.get("user_id"));
		log.info("myInfomap.get('pwd1') : {}", myInfomap.get("pwd1"));
		log.info("myInfomap.get('beforePwd') : {}", myInfomap.get("beforePwd"));
		Map<String, Object> userIdWithPwd = new HashMap<>();
		int user_id = Integer.valueOf(myInfomap.get("user_id"));
		UserClient_vo selectUser = myInformationAjaxDao.selectUserWithId(user_id);
		log.info("selectUser : {}", selectUser);
		userIdWithPwd.put("user_id", selectUser.getUser_id());
		userIdWithPwd.put("beforePwd", myInfomap.get("beforePwd"));
		userIdWithPwd.put("newPwd", myInfomap.get("pwd1"));

		if(selectUser != null ) {
			if(myInfomap.get("beforePwd").equals(selectUser.getUser_pw())) {
				log.info("현재 비번이 같다");
				int count = myInformationAjaxDao.updateUserPwd(userIdWithPwd);
				if(count > 0) {
					result = "success";
				} else {
					result = "noUpdatePwd";
				}
			} else {
				result = "noCorrectPwd";
			}
		}

		return result;
	}

}

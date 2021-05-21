package com.kh.batterflow.admin.vacationManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.admin.vacationManagement.dao.VacationHistoryDao;
import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.VacationInfo_vo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class VacationHistoryServicelmpl implements VacationHistoryService{
	
	@Autowired
	VacationHistoryDao vacationhistoryDao;
	
	
	public List<UserClient_vo> getuserlist() {
		
		List<UserClient_vo> user_list = vacationhistoryDao.user_list();
		
		return user_list;
	}


	@Override
	public List<VacationInfo_vo> getvacationlist() {
		
		List<VacationInfo_vo> vacation_list = vacationhistoryDao.vacation_list();
		
		return vacation_list;
	}

}

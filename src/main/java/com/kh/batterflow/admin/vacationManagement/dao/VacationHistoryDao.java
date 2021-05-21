package com.kh.batterflow.admin.vacationManagement.dao;

import java.util.List;

import com.kh.batterflow.vo.VacationInfo_vo;

public interface VacationHistoryDao {
	
	//초기 유저정보 불러오기
	List user_list();
	//유저들의 휴가정보 불러오기
	List<VacationInfo_vo> vacation_list();
}

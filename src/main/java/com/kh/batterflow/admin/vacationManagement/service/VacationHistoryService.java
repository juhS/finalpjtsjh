package com.kh.batterflow.admin.vacationManagement.service;

import java.util.List;

import com.kh.batterflow.vo.UserClient_vo;
import com.kh.batterflow.vo.VacationInfo_vo;

public interface VacationHistoryService {
	
	//휴가내역관리에 유저들의 정보를 가져오기
	List<UserClient_vo> getuserlist();
	
	//휴가내역관리에 회원들의 휴가정보 가져오기
	List<VacationInfo_vo> getvacationlist();
}

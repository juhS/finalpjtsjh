package com.kh.batterflow.user.myinfo.service;

import java.util.List;

import com.kh.batterflow.vo.VacationInfo_vo;
import com.kh.batterflow.vo.VacationType_vo;

public interface MyInfoService {

	//휴가종류 불러오기
	List<VacationType_vo> selectList(VacationType_vo vacationType_vo);

	//휴가내역 : 휴가일수부여내역 list조회
	public List<VacationInfo_vo> apprList(int user_id) throws Exception;

	//휴가내역 : 휴가일수차감내역 list조회
	public List<VacationInfo_vo> apprMList(int user_id) throws Exception;
	
}

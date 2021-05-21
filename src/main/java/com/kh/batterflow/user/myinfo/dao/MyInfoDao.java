package com.kh.batterflow.user.myinfo.dao;

import java.util.List;

import com.kh.batterflow.vo.VacationInfo_vo;
import com.kh.batterflow.vo.VacationType_vo;

public interface MyInfoDao {

	//휴가내역 : 휴가종류 불러오기(selectBox)
	List<VacationType_vo> vacationTypeList();
	
	
	//휴가내역 : 휴가일수부여내역 list조회
	public List<VacationInfo_vo> apprList(int user_id) throws Exception;

	//휴가내역 : 휴가일수차감내역 list조회
	public List<VacationInfo_vo> apprMList(int user_id) throws Exception;

}

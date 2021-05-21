package com.kh.batterflow.user.myinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.user.myinfo.dao.MyInfoDao;
import com.kh.batterflow.vo.VacationInfo_vo;
import com.kh.batterflow.vo.VacationType_vo;

@Service("MyInfoServiceImpl")
public class MyInfoServiceImpl implements MyInfoService{

	@Autowired
	private MyInfoDao myInfoDao;

	//휴가종류 불러오기(selectBox)
	@Override
	public List<VacationType_vo> selectList(VacationType_vo vacationType_vo) {
		// TODO Auto-generated method stub
		
		List<VacationType_vo> vacationTypeList = myInfoDao.vacationTypeList();
		
		return vacationTypeList;
	}


	//휴가내역 : 휴가일수부여내역 list조회
//	@Override
//	public List<VacationInfo_vo> apprList(int user_id) throws Exception {
//		// TODO Auto-generated method stub
//		return myInfoDao.apprList(user_id);
//	}

	//휴가내역 : 휴가일수부여내역 list조회
	@Override
	public List<VacationInfo_vo> apprList(int user_id) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("서비스임플");
		List<VacationInfo_vo> list = myInfoDao.apprList(user_id);
		//return myInfoDao.apprList(user_id);
		//System.out.println("서비스 list : " + list);
		for(int i=0; i<list.size(); i++) {
			VacationInfo_vo aa = VacationInfo_vo.builder().user_id(list.get(i).getUser_id()).vaca_info_id(list.get(i).getVaca_info_id()).vaca_appr_reason(list.get(i).getVaca_appr_reason()).vaca_appr_day(list.get(i).getVaca_appr_day()).vaca_appr_date(list.get(i).getVaca_appr_date()).build();
		}
		return list;
	}

	//휴가내역 : 휴가일수차감내역 list조회
	@Override
	public List<VacationInfo_vo> apprMList(int user_id) throws Exception {
		
		List<VacationInfo_vo> Mlist = myInfoDao.apprMList(user_id);
		//System.out.println("서비스 list : " + Mlist);
		for(int i=0; i<Mlist.size(); i++) {
			VacationInfo_vo bb = VacationInfo_vo.builder().user_id(Mlist.get(i).getUser_id()).vaca_info_id(Mlist.get(i).getVaca_info_id()).vaca_reason(Mlist.get(i).getVaca_reason()).vaca_usage_day(Mlist.get(i).getVaca_usage_day()).vaca_period(Mlist.get(i).getVaca_period()).build();
		}
		return Mlist;
	}
}

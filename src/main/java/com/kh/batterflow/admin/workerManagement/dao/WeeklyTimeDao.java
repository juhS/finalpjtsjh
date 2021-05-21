package com.kh.batterflow.admin.workerManagement.dao;

import java.util.List;

import com.kh.batterflow.vo.WeeklyTime_vo;

public interface WeeklyTimeDao {



	void insertWeeklyTime(List<String> check);

	void insertWeeklyTime(WeeklyTime_vo weeklyTime);

}

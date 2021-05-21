package com.kh.batterflow.admin.workerManagement.dao;

import java.util.List;

import com.kh.batterflow.vo.WeeklyWork_vo;

public interface WeeklyWorkDao {

	void insertWeeklyWork(WeeklyWork_vo weeklyWork);

	void insertWeeklyWork(int aday, int aweek, int extrawork);

	void insertWeeklyWork(List<String> check);

}

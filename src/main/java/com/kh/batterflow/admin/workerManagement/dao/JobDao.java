package com.kh.batterflow.admin.workerManagement.dao;

import java.util.List;

import com.kh.batterflow.vo.Job;

public interface JobDao {

	//인섵르 
	void addJobposition(Job job);

	//리스트 	
	List<Job> jobList();

	int removeJobPosition(int job_id);

}

package com.kh.batterflow.admin.workerManagement.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.batterflow.vo.Job;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository 
public class JobDaoImpl implements JobDao{
	
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void addJobposition(Job job) {
		
		
		sqlSession.insert("jobList.insert", job);
		
	}

	@Override
	public List<Job> jobList() {
		
		List<Job> jobList = sqlSession.selectList("jobList.list_name");
		
		

		return jobList;
	}

	@Override
	public int removeJobPosition(int job_id) {
		
		int jobNum = sqlSession.delete("jobList.remove_job", job_id);
		
		return jobNum;
	}

}

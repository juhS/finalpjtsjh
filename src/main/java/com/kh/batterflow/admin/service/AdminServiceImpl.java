package com.kh.batterflow.admin.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.admin.dao.AdminDao;
import com.kh.batterflow.vo.Custom_draftTemplate_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.UserClient_vo;
import com.twilio.rest.serverless.v1.service.environment.Log;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<DocuCategory_vo> docuCategoryAll() {
		List<DocuCategory_vo> list = adminDao.docuCategoryAll();
		return list;
	}

	@Override
	public List<DraftFile_vo> draftFileAll() {
		List<DraftFile_vo> list = adminDao.draFileAll();
		return list;
	}

	@Override
	public List<DraftFile_vo> draftFileAllNew() {
		List<DraftFile_vo> list = adminDao.draFileAllNew();
		return list;
	}

	@Override
	public List<DocuCategory_vo> docuCategoryAllNew() {
		List<DocuCategory_vo> list = adminDao.docuCategoryAllNew();
		list.add(adminDao.docuCategoryDefault());
		return list;
	}

	@Override
	public List<UserClient_vo> userClientAll() {
		List<UserClient_vo> list = adminDao.userClientAll();
		return list;
	}

	@Override
	public Custom_draftTemplate_vo docuTemplateSelect(String draft_id) throws ParseException {
		Custom_draftTemplate_vo template = adminDao.docuTemplateSelect(draft_id);
		log.info("template.getDraft_initial_regist_date() : {}", template.getDraft_initial_regist_date());
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		String newDate = simple.format(template.getDraft_initial_regist_date());
		log.info("newDate : {}", newDate);
		Date transDate = simple.parse(newDate);
		template.setDraft_initial_regist_date(transDate);
		template.setNew_initial_regist_date(newDate);
		template.setDraft_title(template.getDraft_title().trim());
		return template;
	}

}

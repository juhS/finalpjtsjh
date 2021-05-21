package com.kh.batterflow.admin.shared.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.batterflow.admin.shared.dao.AdminSharedAjaxDao;
import com.kh.batterflow.vo.Custom_docuDraftInsert_vo;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminSharedAjaxServiceImpl implements AdminSharedAjaxService{

	@Autowired
	private AdminSharedAjaxDao adminSharedAjaxDao;

	@Override
	public Map<String, Object> docuCateSelect() {
		//DocuCategory_vo 에 문서 카테고리 이름들을 가져오기 위해
		List<DocuCategory_vo> docuCategoryVo = adminSharedAjaxDao.docuCategoryList();
		//DraftFile_vo 에 기안서 양식 파일들을 가져오기 위해
		List<DraftFile_vo> draftFileVo = adminSharedAjaxDao.draftFileList();
		Map<String, Object> result = null;
		if(!docuCategoryVo.isEmpty()) {
//			log.info("DocuCategory_vo 가 들어있음");
			if(!draftFileVo.isEmpty()) {
//				log.info("DraftFile_vo 가 들어있음");
				result = new HashMap<>();
				result.put("docuCategory", docuCategoryVo);
				result.put("draftFile", draftFileVo);
			}
		}
//		log.info("result : {} ", result);
		return result;
	}


	@Override
	public Map<String, Object> reportDraft(Map<String, String> divText) {
		log.info("serviceImpl divText : {}", divText);
		//문서 카테고리 이름들 중 보고만을 가져오기 위해
		DocuCategory_vo reportCategory = adminSharedAjaxDao.reportCategory(divText);

		//보고 카테고리에 속하는 기안서들을 가져옴
		List<DraftFile_vo> reportDraftList = adminSharedAjaxDao.reportDraftList(reportCategory);
		Map<String, Object> result = null;
		if(reportCategory != null ) {
			log.info("reportCategoryNum success : {}", reportCategory);
			if(!reportDraftList.isEmpty()) {
				log.info("보고 카테고리에 있는 DraftFile_vo 가 들어있음");
				result = new HashMap<>();
				result.put("docuCategory", reportCategory);
				result.put("draftFile", reportDraftList);
			}
		}

		return result;
	}


	@Override
	public List<DocuCategory_vo> docuCategoryAll() {
		List<DocuCategory_vo> list = adminSharedAjaxDao.docuCategoryList();
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}


	@Override
	public String draftInsert(Custom_docuDraftInsert_vo docuDraftCheck) {
		//카테고리의 정확성을 위하여 id값을 int로 변환
		int cateNum = Integer.parseInt(docuDraftCheck.getDocuCategory());
		//기안서를 넣을 카테고리 조회
		DocuCategory_vo docuCateVo= adminSharedAjaxDao.docuCategorySelectName(cateNum);
		log.info("docuCateVo : {}", docuCateVo);
		log.info("docuDraftList : {}", docuDraftCheck.getCheckedDraftNo());
		//결과를 저장할 문자열 나중에 이걸 반환할거
		String result = "";
		
		if(docuCateVo != null ) {
			Map<String, Object> cateWithDraftVoMap = new HashMap<>();
			Iterator<DraftFile_vo> it = docuDraftCheck.getCheckedDraftNo().iterator();
			while(it.hasNext()) {
				DraftFile_vo draftFileVo = it.next();
				log.info("dao에서 draftFileVo.getDraft_no : {}", draftFileVo.getDraft_no());
				cateWithDraftVoMap.put("cateNum", cateNum);
				cateWithDraftVoMap.put("draftFileVo", draftFileVo);
				//카테고리안에 기안서 있는지 확인
				int count = adminSharedAjaxDao.draftInCate(cateWithDraftVoMap);
				log.info("dao count : {}", count);
				if(count > 0) {
					//이미 기안서가 해당 카테고리에 있다는 에러!
					result = "cateAndDraftError";
					log.info("기안서 있음을 확인");
					return result;
				} else {
					int docuDraftInsert = adminSharedAjaxDao.docuDraftInsert(cateWithDraftVoMap);
					log.info("DB에 값들어갔따잉");
					if(docuDraftInsert > 0) {
						//성공
						result = "success";
					} else {
						//기안서 db 넣기 에러!
						result = "draftInsertError";
					}
				}
			}
		} 
		else {
			//기안서를 넣을 카테고리 조회에서 에러!
			result = "cateError";
		}
		return result;
	}
	

}

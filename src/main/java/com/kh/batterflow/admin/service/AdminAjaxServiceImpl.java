package com.kh.batterflow.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.kh.batterflow.admin.dao.AdminAjaxDao;
import com.kh.batterflow.vo.DocuCategory_vo;
import com.kh.batterflow.vo.DraftFile_vo;
import com.kh.batterflow.vo.DraftTitleOrder_vo;
import com.kh.batterflow.vo.DraftTitleRule_vo;
import com.kh.batterflow.vo.DraftTitleRulereCord_vo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminAjaxServiceImpl implements AdminAjaxService{

	@Autowired
	private AdminAjaxDao adminAjaxDao;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public String changeCateName(Map<String, Object> newNameWithId) {
		log.info("newNameWithId : {}", newNameWithId);
		
		int count = adminAjaxDao.changeCateName(newNameWithId);
		log.info("count : {}", count);
		String resultCode = "";
		if(count > 0) {
			resultCode = "success";
		} else {
			resultCode = "nochange";
		}
		return resultCode;
	}

	@Override
	public String newCateNameAdd(Map<String, Object> newNameadd) {
		DocuCategory_vo duplicateCheck = adminAjaxDao.duplicateCheck(newNameadd);
		String resultCode = "";
		if(duplicateCheck == null) {
			//중복안됨
			int count = adminAjaxDao.newCateNameAdd(newNameadd);
			if(count > 0) {
				resultCode = "success";
			} else {
				resultCode = "nochange";
			}
		} else {
			//중복됨
			resultCode = "duplicateName";
		}
		return resultCode;
	}

	@Transactional
	@Override
	public String delCategory(Map<String, Object> delCate) {
		DefaultTransactionDefinition Def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(Def);
		String assortUnderCate = (String) delCate.get("assortUnderCate");
		int count = 0;
		if(assortUnderCate.equals("secondCate")) {
			//두번째 하위카테
			count = adminAjaxDao.delSecondCategory(delCate);
		} else {
			//첫번재 하위카테
			count = adminAjaxDao.delCategory(delCate);
		}
		String resultCode = "";
		Def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		if(count > 0) {
			resultCode ="success";
			transactionManager.commit(status);
		} else {
			resultCode = "nodelete";
			transactionManager.rollback(status);
		}
		return resultCode;
	}

	@Override
	public Map<String, Object> selectOneDocuId(Map<String, Object> selectOneMap) {
		DocuCategory_vo selectId = adminAjaxDao.duplicateCheck(selectOneMap);
		log.info("selectId : {}", selectId);
		Map<String, Object> result = new HashMap<>();
		String resultCode = "";
		String selectDocuId = "";
		if(selectId != null) {
			resultCode = "success";
			selectDocuId = String.valueOf(selectId.getDocu_cate_id());
		} else {
			resultCode = "noDocuCate";
		}
		result.put("selectDocuId", selectDocuId);
		result.put("resultCode", resultCode);
		
		return result;
	}

	@Override
	public String updateCategory(Map<String, Object> updateCate) {
		DocuCategory_vo selectId = adminAjaxDao.duplicateCheckWithName(updateCate);
		String resultCode = "";
		if(selectId == null) {
			int count = adminAjaxDao.changeCateName(updateCate);
			if(count > 0) {
				resultCode = "success";
			} else {
				resultCode = "noUpdate";
			}
		} else {
			resultCode = "duplicateName";
		}
		return resultCode;
	}

	@Override
	public Map<String, Object> draftWithCateMap(Map<String, Object> map) {
		Map<String, Object> result = new HashMap<>();
		List<DraftFile_vo> draftList = new ArrayList<>();
		String resultCode = "";
		if(map.get("status").equals("root")) {
			draftList = adminAjaxDao.draftWithCateMapAll(map);
			if(draftList.isEmpty()) {
				resultCode = "noSelect";
			} else {
				resultCode = "success";
			}
		} else {
			draftList = adminAjaxDao.draftWithCateMap(map);
			if(draftList.isEmpty()) {
				resultCode = "noSelect";
			} else {
				resultCode = "success";
			}
		}
		result.put("draftFile", draftList);
		result.put("resultCode", resultCode);
		return result;
	}

	@Override
	public Map<String, Object> draftCopyAfterSelect(Map<String, Object> insertAndSelect) {
		String resultCode = "";
		int pkNum = adminAjaxDao.draftFileSeqNumberGet();
		insertAndSelect.put("draftPkNum", pkNum);
		int count = adminAjaxDao.draftCopyAfterInsert(insertAndSelect);
		Map<String, Object> result = new HashMap<>();
		DraftFile_vo draftFile = null;
		if(count > 0) {
			draftFile = adminAjaxDao.draftCopyAfterSelect(pkNum);
			if(draftFile != null) {
				resultCode = "success";				
			} else {
				resultCode = "noSelect";
			}
		} else {
			resultCode = "noinsert";
		}
		result.put("draftFile", draftFile);
		result.put("resultCode", resultCode);
		return result;
	}

	@Override
	public List<DraftTitleOrder_vo> draftTitleRuleLoad() {
		List<DraftTitleRule_vo> list = adminAjaxDao.draftTitleRuleLoad();
		List<DraftTitleOrder_vo> result = new ArrayList<>();
		if(!list.isEmpty()) {
			DraftTitleRulereCord_vo orderLoad = adminAjaxDao.titleRuleOrder();
			if(orderLoad != null) {
				String[] sArr = orderLoad.getDocu_title_rule_order().split("-");
				int i = 1;
				//순서를 꺼내와서 리턴할거에 담아줌
				for(String str : sArr) {
					DraftTitleOrder_vo order = new DraftTitleOrder_vo();
					order.setDraft_title_order_id(i);
					order.setDraft_title_order_choice("Y");
					order.setDraft_title_order_name(str);
					result.add(order);
					i++;
				}
				//리턴할거에 없는 
				Set<String> set = new HashSet<String>();
				for(int a = 0 ; a < list.size() ; a++) {
					set.add(list.get(a).getDocu_title_rule_name());
				}
				
				for(int b = 0 ; b < result.size(); b++) {
					if(set.contains(result.get(b).getDraft_title_order_name())) {
						set.remove(result.get(b).getDraft_title_order_name());
					}
				}
				log.info("set : {}", set);
				Iterator<String> iter = set.iterator();
				while(iter.hasNext()) {
					DraftTitleOrder_vo noSelect = new DraftTitleOrder_vo();
					noSelect.setDraft_title_order_id(i);
					noSelect.setDraft_title_order_name((String)iter.next());
					noSelect.setDraft_title_order_choice("N");
					i++;
					result.add(noSelect);
				}
				
				log.info("result : {}", result);

				return result;
			}
		} 
		
		return null;
	}

	@Override
	public String titleRuleOrderUpdate(String orderText) {
		String resultCode = "";
		int count = adminAjaxDao.titleRuleOrderUpdate(orderText);
		if(count > 0) {
			resultCode = "success";
		} else {
			resultCode = "noUpdate";
		}
		return resultCode;
	}

	@Override
	public void draftExplainUpdate(Map<String, String> textAreaVal) {
		adminAjaxDao.draftExplainUpdate(textAreaVal);
		
	}

	@Override
	public String draftFileUpdate(Map<String, Object> map) {
		String resultCode = "";
		int count = adminAjaxDao.draftFileUpdate(map);
		if(count > 0) {
			resultCode = "success";
		} else {
			resultCode = "error";
		}
		return resultCode;
	}

}

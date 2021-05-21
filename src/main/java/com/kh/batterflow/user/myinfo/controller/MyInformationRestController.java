package com.kh.batterflow.user.myinfo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.batterflow.user.myinfo.service.MyInformationAjaxService;

@RestController
@RequestMapping("/restmyinfo")
public class MyInformationRestController {
	
	@Autowired
	private MyInformationAjaxService myInformationAjaxService;

	@PostMapping("/changepwd")
	public String changePwd(@RequestParam Map<String, String> myInfomap) {
		String result = myInformationAjaxService.changePwd(myInfomap);
		
		return result;
	}
}

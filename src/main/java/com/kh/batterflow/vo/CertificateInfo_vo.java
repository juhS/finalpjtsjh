package com.kh.batterflow.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CertificateInfo_vo {

	private int certInfo_id; //자격정 정보 ID	
	private String cert_name;//자격증명
	private String auth_agency;//인증기관
	private String license_number;//자격증 번호 	
	private Date expire_date;//유효기간 	
	private String license_url;//자격증 URL	
	private int user_id;//사용자 ID	
}

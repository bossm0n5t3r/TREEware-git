package com.treeware.member.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.EmployeeDto;

public interface MemberService {
	
	// 로그인
	public EmployeeDto login(Map<String, String> map);
	
	public List<Map> getDptCommute();
//	public FormDto getVacation();
	public String getCertificate();
// 자율출퇴근
}

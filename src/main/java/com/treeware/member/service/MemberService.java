package com.treeware.member.service;

import java.util.Map;

import com.treeware.admin.member.model.EmployeeDto;

public interface MemberService {
	
	// 로그인
	public EmployeeDto login(Map<String, String> map);
	
}

package com.treeware.member.dao;

import java.util.Map;

import com.treeware.admin.member.model.EmployeeDto;

public interface MemberDao {
	// 로그인
	EmployeeDto login(Map<String, String> map);
}

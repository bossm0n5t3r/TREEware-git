package com.treeware.admin.member.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.EmployeeDto;

public interface AdminMemberService {
	public int register(EmployeeDto employeeDto);
	public int modify(EmployeeDto employeeDto);
	public int getMember(String id);
	public List<EmployeeDto> getMemberList();
	public EmployeeDto memberSearch(Map<String, String> map);
	public int deleteMember(String id);
	public int idSetup(Map<String, String> map);
	public int idCheck(String id);
}

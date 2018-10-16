package com.treeware.admin.member.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.*;

public interface AdminMemberService {
	public int register(EmployeeDto employeeDto);
	public int modify(EmployeeDto employeeDto);
	public int getMember(String id);
	public int getMemberCount();
	public List<EmployeeDto> getMemberList();
	public List<DepartmentDto> getDepartmentList();
	public List<PositionDto> getPositionList();	
	public List<RankDto> getRankList();	
	public EmployeeDto memberSearch(Map<String, String> map);
	public int deleteMember(String id);
	public int idSetup(Map<String, String> map);
	// 아이디 중복 검사
	public int idCheck(String id);
}

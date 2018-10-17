package com.treeware.admin.member.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.*;

public interface AdminMemberService {
	public int register(EmployeeDto employeeDto);
	public int modify(EmployeeDto employeeDto);
	public int getMemberCount();
	public EmployeeDto getEmployee(String emp_sq);
	public DepartmentDto getDepartment(int dpt_sq);
	public PositionDto getPosition(int pst_sq);
	public RankDto getRank(int rnk_sq);
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

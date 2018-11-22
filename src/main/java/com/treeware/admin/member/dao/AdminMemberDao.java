package com.treeware.admin.member.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.*;

public interface AdminMemberDao {
	public int register(EmployeePicDto employeePicDto);
	public int modify(EmployeeDto employeeDto);
	public int getMemberCount();
	public EmployeeDto getEmployee(String emp_sq);
	public PermissionDto getPermission(int pms_sq);
	public DepartmentDto getDepartment(int dpt_sq);
	public PositionDto getPosition(int pst_sq);
	public RankDto getRank(int rnk_sq);
	public List<EmployeeDto> getMemberList();
	public List<DepartmentDto> getDepartmentList();
	public List<DepartmentDto> getDistinctDepartmentList();
	public List<PositionDto> getPositionList();
	public List<RankDto> getRankList();	
	public List<EmployeeDto> memberSearch(Map<String, String> map);
	public int deleteMember(String id);
	public int idSetup(Map<String, String> map);
	public int idCheck(String id);
	//	부서 리스트 얻기
	public List<DepartmentDto> getDptList();
	//	직위 리스트 얻기
	public List<RankDto> getRnkList();
}

package com.treeware.form.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.DepartmentDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.model.RankDto;

public interface FormDao {
	public int getMemberCount();
	public List<EmployeeDto> memberSearch(Map<String, String> map);
	public List<EmployeeDto> getMemberList();
	public List<DepartmentDto> getDepartmentList();
	public List<RankDto> getRankList();	
}

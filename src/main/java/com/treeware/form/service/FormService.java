package com.treeware.form.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.DepartmentDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.model.RankDto;
import com.treeware.form.model.FormDto;

public interface FormService {
	//사원찾기
	public int getMemberCount();
	public List<EmployeeDto> memberSearch(Map<String, String> map);
	public List<EmployeeDto> getMemberList();
	public List<DepartmentDto> getDepartmentList();
	public List<RankDto> getRankList();	
	//결재등록
	public int write(FormDto formDto);
}

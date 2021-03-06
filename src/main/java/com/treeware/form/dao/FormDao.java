package com.treeware.form.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.DepartmentDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.model.RankDto;
import com.treeware.form.model.FormDto;

public interface FormDao {
	//결재등록,리스트,처리
	public int write(FormDto formDto);
	public FormDto view(int apv_sq);
	public FormDto approve(int apv_sq);
	public int change(FormDto formDto);
	public List<FormDto> sendList(String emp_sq);
	public List<FormDto> receiveList(String emp_sq);
	public int getNextSeq();
	//사원찾기
	public int getMemberCount();
	public List<EmployeeDto> memberSearch(Map<String, String> map);
	public List<EmployeeDto> getMemberList();
	public List<DepartmentDto> getDepartmentList();
	public List<RankDto> getRankList();	
}

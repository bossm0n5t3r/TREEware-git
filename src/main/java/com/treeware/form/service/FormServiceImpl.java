package com.treeware.form.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.dao.AdminMemberDao;
import com.treeware.admin.member.model.DepartmentDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.model.RankDto;
import com.treeware.form.dao.FormDao;
import com.treeware.form.model.FormDto;

@Service
public class FormServiceImpl implements FormService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getMemberCount() {
		return sqlSession.getMapper(AdminMemberDao.class).getMemberCount();
	}

	@Override
	public List<EmployeeDto> memberSearch(Map<String, String> map) {
		return sqlSession.getMapper(AdminMemberDao.class).memberSearch(map);
	}

	@Override
	public List<EmployeeDto> getMemberList() {
		return sqlSession.getMapper(AdminMemberDao.class).getMemberList();
	}

	@Override
	public List<DepartmentDto> getDepartmentList() {
		return sqlSession.getMapper(AdminMemberDao.class).getDepartmentList();
	}

	@Override
	public List<RankDto> getRankList() {
		return sqlSession.getMapper(AdminMemberDao.class).getRankList();
	}
	
	@Override
	public int write(FormDto formDto) {
		return sqlSession.getMapper(FormDao.class).write(formDto);
	}

}

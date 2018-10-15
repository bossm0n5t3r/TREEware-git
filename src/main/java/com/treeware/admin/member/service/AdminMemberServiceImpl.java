package com.treeware.admin.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.dao.AdminMemberDao;
import com.treeware.admin.member.model.EmployeeDto;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int register(EmployeeDto employeeDto) {
		return sqlSession.getMapper(AdminMemberDao.class).register(employeeDto);
	}

	@Override
	public int modify(EmployeeDto employeeDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EmployeeDto> getMemberList() {
		return sqlSession.getMapper(AdminMemberDao.class).getMemberList();
	}

	@Override
	public EmployeeDto memberSearch(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int idSetup(Map<String, String> map) {
		return 0;
	}

	// 아이디 중복 검사
	@Override
	public int idCheck(String id) {
		return sqlSession.getMapper(AdminMemberDao.class).idCheck(id);
	}

}

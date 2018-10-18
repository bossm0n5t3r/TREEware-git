package com.treeware.admin.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.dao.AdminMemberDao;
import com.treeware.admin.member.model.*;

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
		return sqlSession.getMapper(AdminMemberDao.class).modify(employeeDto);
	}

	@Override
	public List<EmployeeDto> getMemberList() {
		return sqlSession.getMapper(AdminMemberDao.class).getMemberList();
	}

	@Override
	public List<EmployeeDto> memberSearch(Map<String, String> map) {
		return sqlSession.getMapper(AdminMemberDao.class).memberSearch(map);
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

	@Override
	public List<DepartmentDto> getDepartmentList() {
		return sqlSession.getMapper(AdminMemberDao.class).getDepartmentList();
	}

	@Override
	public List<PositionDto> getPositionList() {
		return sqlSession.getMapper(AdminMemberDao.class).getPositionList();
	}

	@Override
	public List<RankDto> getRankList() {
		return sqlSession.getMapper(AdminMemberDao.class).getRankList();
	}

	@Override
	public int getMemberCount() {
		return sqlSession.getMapper(AdminMemberDao.class).getMemberCount();
	}

	@Override
	public EmployeeDto getEmployee(String emp_sq) {
		return sqlSession.getMapper(AdminMemberDao.class).getEmployee(emp_sq);
	}

	@Override
	public DepartmentDto getDepartment(int dpt_sq) {
		return sqlSession.getMapper(AdminMemberDao.class).getDepartment(dpt_sq);
	}

	@Override
	public PositionDto getPosition(int pst_sq) {
		return sqlSession.getMapper(AdminMemberDao.class).getPosition(pst_sq);
	}

	@Override
	public RankDto getRank(int rnk_sq) {
		return sqlSession.getMapper(AdminMemberDao.class).getRank(rnk_sq);
	}

}

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
	public int write(FormDto formDto) {
//		int seq=sqlSession.getMapper(FormDao.class).getNextSeq();
//		formDto.setAPV_SQ(seq);
		return sqlSession.getMapper(FormDao.class).write(formDto);
	}
	
	@Override
	public int getNextSeq() {
		return sqlSession.getMapper(FormDao.class).getNextSeq();
	}
	
	@Override
	public FormDto view(int apv_sq) {
		return sqlSession.getMapper(FormDao.class).view(apv_sq);
	}
	
	@Override
	public FormDto approve(int apv_sq) {
		return sqlSession.getMapper(FormDao.class).approve(apv_sq);
	}
	
	@Override
	public int change(FormDto formDto) {
		return sqlSession.getMapper(FormDao.class).change(formDto);
	}

	@Override
	public List<FormDto> sendList(String emp_sq) {
		return sqlSession.getMapper(FormDao.class).sendList(emp_sq);
	}

	@Override
	public List<FormDto> receiveList(String emp_sq) {
		return sqlSession.getMapper(FormDao.class).receiveList(emp_sq);
	}

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


}

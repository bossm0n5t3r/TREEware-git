package com.treeware.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSession sqlSession;
	
	// 로그인
	@Override
	public EmployeeDto login(Map<String, String> map) {
		return sqlSession.getMapper(MemberDao.class).login(map);
	}
	
	
	@Override
	public List<Map> getDptCommute() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getCertificate() {
		// TODO Auto-generated method stub
		return null;
	}


}

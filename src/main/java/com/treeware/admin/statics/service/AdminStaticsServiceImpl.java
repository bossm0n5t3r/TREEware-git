package com.treeware.admin.statics.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.statics.dao.AdminStaticsDao;

@Service
public class AdminStaticsServiceImpl implements AdminStaticsService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String getDptCommute(Map<String, String> map) {
		return sqlSession.getMapper(AdminStaticsDao.class).getDptCommute(map);
	}

	@Override
	public String getDptOffWork(Map<String, String> map) {
		return sqlSession.getMapper(AdminStaticsDao.class).getDptOffWork(map);
	}

	@Override
	public int getVacation(String month) {
		return sqlSession.getMapper(AdminStaticsDao.class).getVacation(month);
	}

}

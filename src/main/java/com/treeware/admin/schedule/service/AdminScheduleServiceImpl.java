package com.treeware.admin.schedule.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.schedule.dao.AdminScheduleDao;
import com.treeware.admin.schedule.model.ScheduleDivideDto;

@Service
public class AdminScheduleServiceImpl implements AdminScheduleService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ScheduleDivideDto> getScdDivList() {
		return sqlSession.getMapper(AdminScheduleDao.class).getScdDivList();
	}

}

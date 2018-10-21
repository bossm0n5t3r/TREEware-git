package com.treeware.admin.schedule.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.schedule.dao.AdminScheduleDao;
import com.treeware.admin.schedule.model.ScheduleDivideDto;
import com.treeware.admin.schedule.model.ScheduleDto;

@Service
public class AdminScheduleServiceImpl implements AdminScheduleService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ScheduleDivideDto> getScdDivList() {
		return sqlSession.getMapper(AdminScheduleDao.class).getScdDivList();
	}

	@Override
	public List<ScheduleDto> getListSchedule(String emp_sq) {
		return sqlSession.getMapper(AdminScheduleDao.class).getListSchedule(emp_sq);
	}

}

package com.treeware.schedule.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.schedule.model.ScheduleDto;
import com.treeware.schedule.dao.ScheduleDao;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerSchedule(ScheduleDto scheduleDto) {
		return sqlSession.getMapper(ScheduleDao.class).registerSchedule(scheduleDto);
	}

}

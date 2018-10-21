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
	public ScheduleDto getSchedule(int scd_sq) {
		return null;
	}
	
	@Override
	public int registerSchedule(ScheduleDto scheduleDto) {
		int scd_sq = sqlSession.getMapper(ScheduleDao.class).getNextScheduleSq();
		scheduleDto.setScd_sq(scd_sq);
		return sqlSession.getMapper(ScheduleDao.class).registerSchedule(scheduleDto) != 0 ? scd_sq : 0;
	}

	@Override
	public int modifySchedule(ScheduleDto scheduleDto) {
		return sqlSession.getMapper(ScheduleDao.class).modifySchedule(scheduleDto);
	}

	@Override
	public int deleteSchedule(int scd_sq) {
		return sqlSession.getMapper(ScheduleDao.class).deleteSchedule(scd_sq);
	}

}

package com.treeware.schedule.service;

import java.util.Map;

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
		return sqlSession.getMapper(ScheduleDao.class).getSchedule(scd_sq);
	}
	
	@Override
	public int registerSchedule(Map<String, String> map) {
		int scd_sq = sqlSession.getMapper(ScheduleDao.class).getNextScheduleSq();
		map.put("scd_sq", scd_sq + "");
		return sqlSession.getMapper(ScheduleDao.class).registerSchedule(map) != 0 ? scd_sq : 0;
	}

	@Override
	public int modifySchedule(Map<String, String> map) {
		return sqlSession.getMapper(ScheduleDao.class).modifySchedule(map);
	}

	@Override
	public int deleteSchedule(int scd_sq) {
		return sqlSession.getMapper(ScheduleDao.class).deleteSchedule(scd_sq);
	}

}

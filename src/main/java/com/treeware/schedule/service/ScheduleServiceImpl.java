package com.treeware.schedule.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.schedule.model.ScheduleDto;
import com.treeware.schedule.dao.ScheduleDao;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerSchedule(ScheduleDto scheduleDto) {
		int scd_sq = sqlSession.getMapper(ScheduleDao.class).getNextScheduleSq();
		scheduleDto.setScd_sq(scd_sq);
		return sqlSession.getMapper(ScheduleDao.class).registerSchedule(scheduleDto);
	}

	@Override
	public int modifySchedule(ScheduleDto scheduleDto) {
		return sqlSession.getMapper(ScheduleDao.class).modifySchedule(scheduleDto);
	}

	@Override
	public int deleteSchedule(int scd_sq) {
		return sqlSession.getMapper(ScheduleDao.class).deleteSchedule(scd_sq);
	}

	@Override
	public List<ScheduleDto> getListSchedule(EmployeeDto employeeDto) {
		return sqlSession.getMapper(ScheduleDao.class).getListSchedule(employeeDto);
	}

}

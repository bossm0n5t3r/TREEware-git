package com.treeware.commute.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.commute.model.CommuteDto;
import com.treeware.commute.dao.CommuteDao;

@Service
public class CommuteServiceImpl implements CommuteService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int checkToday(Map<String, String> map) {
		return sqlSession.getMapper(CommuteDao.class).checkToday(map);
	}

	@Override
	public int getCommuteSq(Map<String, String> map) {
		return sqlSession.getMapper(CommuteDao.class).getCommuteSq(map);
	}

	@Override
	public int getNextCommuteSq(Map<String, String> map) {
		return sqlSession.getMapper(CommuteDao.class).getNextCommuteSq(map);
	}
	
	@Override
	public CommuteDto today(int cmt_sq) {
		return sqlSession.getMapper(CommuteDao.class).today(cmt_sq);
	}

	@Override
	public int punchIn(CommuteDto commuteDto) {
		return sqlSession.getMapper(CommuteDao.class).punchIn(commuteDto);
	}

	@Override
	public int punchOut(CommuteDto commuteDto) {
		// TODO Auto-generated method stub
		return 0;
	}


}

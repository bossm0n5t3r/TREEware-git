package com.treeware.common.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.common.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getNextBrdSeq() {
		return sqlSession.getMapper(CommonDao.class).getNextBrdSeq();
	}
	
}

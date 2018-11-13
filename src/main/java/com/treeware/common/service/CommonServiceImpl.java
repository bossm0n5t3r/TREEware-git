package com.treeware.common.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.common.dao.CommonDao;
import com.treeware.util.PageNavigation;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getNextBrdSeq() {
		return sqlSession.getMapper(CommonDao.class).getNextBrdSeq();
	}

	@Override
	public PageNavigation makePageNavigation(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}
	
}

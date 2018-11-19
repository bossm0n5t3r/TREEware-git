package com.treeware.common.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.common.dao.CommonDao;
import com.treeware.util.PageNavigation;
import com.treeware.util.TreewareConstance;

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
		int pg = Integer.parseInt(map.get("pg"));
		PageNavigation navigator = new PageNavigation();
		navigator.setPageNo(pg);
		int newArticleCount = sqlSession.getMapper(CommonDao.class).getNewArticleCount(Integer.parseInt(map.get("bcode")));
		navigator.setNewArticleCount(newArticleCount);
		int totalArticleCount = sqlSession.getMapper(CommonDao.class).getTotalArticleCount(map);//DB
		navigator.setTotalArticleCount(totalArticleCount);
		int totalPageCount = (totalArticleCount - 1) / TreewareConstance.ARTICLE_COUNT + 1;
		navigator.setTotalPageCount(totalPageCount);
		int pc = TreewareConstance.PAGE_COUNT;
		navigator.setNowFirst(pg <= pc);
		navigator.setNowLast((pg - 1) / pc == (totalPageCount - 1) / pc);
		return navigator;
	}
	
}

package com.treeware.common.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.common.dao.CommonDao;
import com.treeware.util.PageNavigation;

@Service
public class CommonServiceImpl implements CommonService {
	
	public static final String DEFAULT_CHARSET="UTF-8";
	public static final int ARTICLE_COUNT=20;
	public static final int PAGE_COUNT=10;

	@Autowired
	private SqlSession sqlSession;

	@Override
	public PageNavigation makePageNavigation(Map<String, String> map) {
		
//		int pg = Integer.parseInt(map.get("pg"));

		PageNavigation navigation = new PageNavigation();
//		navigation.setPageNo(pg);
//		int newArticleCount = sqlSession.getMapper(CommonDao.class).getNewArticle(Integer.parseInt(map.get("ml_grp_sq")));
//		navigation.setNewArticleCount(newArticleCount);
		int totalArticleCount = sqlSession.getMapper(CommonDao.class).getTotalArticleCount(map);
		navigation.setTotalArticleCount(totalArticleCount);
		int totalPageCount = (totalArticleCount-1) / ARTICLE_COUNT + 1;
		navigation.setTotalPageCount(totalPageCount);
		int pc = PAGE_COUNT;
//		navigation.setNowFirst(pg<=pc);
//		navigation.setNowLast((totalPageCount -1) /pc * pc < pg);
		return navigation;
	}
	
	
}

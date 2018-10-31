package com.treeware.common.dao;

import java.util.Map;

public interface CommonDao {
	
	int getNextSeq();
//	int getNewArticle(int ml_grp_sq);
	int getTotalArticleCount(Map<String, String> map);

	public int getNextBrdSeq();
	
}

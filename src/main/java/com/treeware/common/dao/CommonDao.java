package com.treeware.common.dao;

import java.util.Map;

public interface CommonDao {
	
	public int getNextBrdSeq();
	public int getNextRplSeq();
	public int getNewArticleCount(int bcode);
	public int getTotalArticleCount(Map<String, String> map);
	
}

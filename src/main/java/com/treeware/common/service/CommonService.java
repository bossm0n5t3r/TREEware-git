package com.treeware.common.service;

import java.util.Map;

import com.treeware.util.PageNavigation;

public interface CommonService {
	
	public int getNextBrdSeq();

	public PageNavigation makePageNavigation(Map<String, String> map);
	
}

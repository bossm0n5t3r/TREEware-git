package com.treeware.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TreewareConstance {
	public static final String TODAY = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
	public static final String TODAY_KOR = new SimpleDateFormat("yyyy년 MM월 dd일 ").format(new Date());
}

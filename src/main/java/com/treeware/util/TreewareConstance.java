package com.treeware.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TreewareConstance {
	public static final String TODAY = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
	public static final String TODAY_KOR = new SimpleDateFormat("yyyy년 MM월 dd일 ").format(new Date());
	public static final int MONTH = Calendar.getInstance().get(Calendar.MONTH) + 1;
	public static final String [] DayOfWeek = new String [] {"일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"};
	public static final int [] DateOfMonth = new int [] {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
}

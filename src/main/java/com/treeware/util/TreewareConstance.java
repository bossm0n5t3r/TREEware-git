package com.treeware.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TreewareConstance {
	public static final String TODAY = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
	public static final String TODAY_KOR = new SimpleDateFormat("yyyy�� MM�� dd�� ").format(new Date());
	public static final String [] DayOfWeek = new String [] {"�Ͽ���", "������", "ȭ����", "������", "�����", "�ݿ���", "�����"};
	public static final int [] DateOfMonth = new int [] {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
}

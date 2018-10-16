package com.treeware.util;

public class NumberCheck {
	public static int nullToZero(String tmp) {
		int number = 0;
		if (isNumber(tmp)) {
			number = Integer.parseInt(tmp);
		}
		return number;
	}
	
	public static int nullToOne(String tmp) {
		int number = 1;
		if (isNumber(tmp)) {
			number = Integer.parseInt(tmp);
		}
		return number;
	}

	private static boolean isNumber(String tmp) {
		boolean flag = true;
		if (tmp != null && tmp.trim().length() != 0) {
			int length = tmp.length();
			for (int i = 0; i < length; i++) {
				if (tmp.charAt(i) < 48 || tmp.charAt(i) > 57) {
					flag = false;
					break;
				}
			}
		} else {
			flag = false;
		}
		return flag;
	}
}

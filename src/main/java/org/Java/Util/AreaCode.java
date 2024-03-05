package org.Java.Util;

import java.util.HashMap;

public class AreaCode {
	private static AreaCode instance;
	private HashMap<String, String> list;
	public AreaCode() {
		list = new HashMap<String, String>();
		list.put("11","서울시");
		list.put("26", "부산시");
		list.put("27", "대구시");
		list.put("28", "인천시");
		list.put("29", "광주시");
		list.put("30", "대전시");
		list.put("31", "울산시");
		list.put("41", "경기도");
		list.put("42", "강원도");
		list.put("43", "충북도");
		list.put("44", "충남도");
		list.put("45", "전북도");
		list.put("46", "전남도");
		list.put("47", "경북도");
		list.put("48", "경남도");
		list.put("50", "제주도");
	}
	public static AreaCode getInstance(){
		if(instance == null) {
			instance = new AreaCode();
		}
		return instance;
	}
	public String getAreacode(String key) {
		return list.get(key);
	}
	
}

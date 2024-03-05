package org.Java.Util;

import java.util.HashMap;

public class Address_FolderUtil {
	private static Address_FolderUtil instance;
	private HashMap<String, String> list;
	private  Address_FolderUtil() {
		list = new HashMap<String, String>();
		list.put("11","seoul"); //서울
		list.put("26", "busan"); //부산
		list.put("27", "degu"); //대구
		list.put("28", "incheon"); //인천
		list.put("29", "gwangju"); //광주
		list.put("30", "daejeon"); //대전
		list.put("31", "ulsan"); //울산
		list.put("41", "gyeonggi"); //경기
		list.put("42", "gangwon"); //강원도
		list.put("43", "chungbuk"); //충북
		list.put("44", "chungnam"); //충남
		list.put("45", "jeonbuk"); //전북
		list.put("46", "jeonnam"); //전남
		list.put("47", "gyeongbuk"); //경북
		list.put("48", "gyeongnam"); //경남
		list.put("50", "jeju"); //제주
		list.put("51", "gangwon");//강원
	}
	public static Address_FolderUtil getInstance() {
		if (instance == null) {
			instance = new Address_FolderUtil();
		}
		return instance;
	}
	public String getAreacode(String key) {
		return list.get(key);
	}
	
}

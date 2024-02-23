package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.*;
import org.Java.VO.Page;

public class ViewMapper {
	private HashMap<String, Page> mapper;
	public ViewMapper() {
		mapper = new HashMap<String, Page>();
		mapper.put("/Main.do",new MainService());
		//로그인 선택창
		mapper.put("/Login.do", new LoginMainService());
		//카카오로그인
//		mapper.put("/KakaoLogin.do", new KakaoLoginService());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

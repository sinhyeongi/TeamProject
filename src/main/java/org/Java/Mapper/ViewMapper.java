package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.LoginMainService;
import org.Java.Service.MainService;
import org.Java.Service.NaverLogin_Service;
import org.Java.Service.ReserveService;

import org.Java.VO.Page;

public class ViewMapper {
	private HashMap<String, Page> mapper;
	public ViewMapper() {
		mapper = new HashMap<String, Page>();
		mapper.put("/Main.do",new MainService());
		mapper.put("/Login.do", new LoginMainService());
		//카카오로그인
//		mapper.put("/KakaoLogin.do", new KakaoLoginService());
		
		//네이버 로그인
		mapper.put("/Naver_Login.do",new NaverLogin_Service());
		mapper.put("/reserve.do", new ReserveService());

	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

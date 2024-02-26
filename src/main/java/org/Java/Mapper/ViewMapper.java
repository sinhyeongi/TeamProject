package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.KakaoLoginService;
import org.Java.Service.LoginInputService;
import org.Java.Service.LoginMainService;
import org.Java.Service.MainService;
import org.Java.Service.ReserveService;

import org.Java.VO.Page;

public class ViewMapper {
	private HashMap<String, Page> mapper;
	public ViewMapper() {
		mapper = new HashMap<String, Page>();
		mapper.put("/Main.do",new MainService());
		//로그인방식선택
		mapper.put("/Login.do", new LoginMainService());
		//카카오로그인
		mapper.put("/KakaoLogin.do", new KakaoLoginService());
		//아이디로그인
		mapper.put("/LoginInput.do", new LoginInputService());
		mapper.put("/reserve.do", new ReserveService());

	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

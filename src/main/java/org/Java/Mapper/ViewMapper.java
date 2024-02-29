package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.*;
import org.Java.Test.Test_update;
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
		//네이버 로그인
		mapper.put("/Naver_Login.do",new NaverLoginService());
		mapper.put("/Member_Insert.do", new Member_Insert());
		mapper.put("/reserve.do", new ReserveService());
		//중복체크
		mapper.put("/DuplicatedCheck.do", new DuplicatedCheckService());
		//회원가입
		mapper.put("/MemberInserData.do", new MemberInsertDataService());
		
		
		// 호텔 리스트
		mapper.put("/HotelList.do", new HotelListService());
		// Test
		mapper.put("/Test.do", new TestService());
		mapper.put("/Test_update.do",new Test_update());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

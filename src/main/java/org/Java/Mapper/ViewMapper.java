package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.DeleteUser;
import org.Java.Service.Delete_User_API;
import org.Java.Service.HotelListService;
import org.Java.Service.KakaoLoginService;
import org.Java.Service.LoginCheckService;
import org.Java.Service.LoginInputService;
import org.Java.Service.LoginMainService;
import org.Java.Service.MainService;
import org.Java.Service.Member_InfoService;
import org.Java.Service.Member_Insert;
import org.Java.Service.ModalService;
import org.Java.Service.NaverLoginService;
import org.Java.Service.ReserveService;
import org.Java.Service.TestService;
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
//		mapper.put("/KakaoLogin.do", new KakaoLoginService());
		
		//네이버 로그인
		mapper.put("/Naver_Login.do",new NaverLoginService());
		mapper.put("/Member_Insert.do", new Member_Insert());
		mapper.put("/reserve.do", new ReserveService());
		// 유저 정보 보기
		mapper.put("/Member_Info.do", new Member_InfoService());
		// 호텔 리스트
		mapper.put("/HotelList.do", new HotelListService());
		// Test
		mapper.put("/Test.do", new TestService());
		mapper.put("/Test_update.do",new Test_update());
		mapper.put("/Modal.do", new ModalService());
		//로그인 체크(비동기 용)
		mapper.put("/LoginCheck.do", new LoginCheckService());
		
		mapper.put("/DeleteUser_API.do", new Delete_User_API());
		mapper.put("/DeleteUser.do", new DeleteUser());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

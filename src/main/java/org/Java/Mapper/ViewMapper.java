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
		// 유저 정보 보기
		mapper.put("/Member_Info.do", new Member_InfoService());
		// 유저 포인트 및 쿠폰
		mapper.put("/Member_PointAndCoupon_Info.do" , new Member_PonintAndCoupon_Info());

		//중복체크 (nickname)
		mapper.put("/DuplicatedCheck.do", new DuplicatedCheckService());
		//회원가입
		mapper.put("/MemberInserData.do", new MemberInsertDataService());
		// 호텔 리스트
		mapper.put("/HotelList.do", new HotelListService());
		// 호텔 인포
		mapper.put("/HotelInfo.do", new HotelInfoService());
		// Test
		mapper.put("/Test.do", new TestService());
		mapper.put("/Test_update.do",new Test_update());
		// modal용 맵퍼
		mapper.put("/Modal.do", new ModalService());
		//로그인 체크(비동기 용)
		mapper.put("/LoginCheck.do", new LoginCheckService());
		//유저 삭제
		mapper.put("/DeleteUser_API.do", new Delete_User_API());
		mapper.put("/DeleteUser.do", new DeleteUser());
		//고객 예약 정보
		mapper.put("/Reserve_Info.do", new MemberReserveInfo());
		//host 호텔 정보보기
		mapper.put("/host_hotel_info.do", new Host_Hotel_Info());
		// 지역별 맵
		mapper.put("/AreaMap.do", new AreaMapService());
		//admin
		mapper.put("/adminPage.do", new AdminPage());
		mapper.put("/admin_memberList.do",new AdminMemberList());
		mapper.put("/admin_Modal_memberInfo.do",new Modal_adminMemberInfoService());
		//호텔 수정하기(호스트)
		mapper.put("/host_hotel_mif.do", new Host_Hotel_Mif());
		//이미지 추가 및 수정
		mapper.put("/ImgUpload.do", new ImgUpload());
		// 이미지 삭제
		mapper.put("/DeleteImg.do",new DeleteImg());
		//예약 데이터 추가
		mapper.put("/reserve_insert.do", new Reserve_InserService());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

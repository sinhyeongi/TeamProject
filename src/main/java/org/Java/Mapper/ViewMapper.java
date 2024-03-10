package org.Java.Mapper;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.Service.*;

import org.Java.Test.Test_update;
import org.Java.VO.Page;

public class ViewMapper {
	private HashMap<String, Page> mapper;
	public ViewMapper() {
		mapper = new HashMap<String, Page>();
		mapper.put("/Main.do",new MainService());
		//예약
		mapper.put("/reserve.do", new ReserveService());
		// 유저 정보 보기
		mapper.put("/Member_Info.do", new Member_InfoService());
		// 유저 포인트 및 쿠폰
		mapper.put("/Member_PointAndCoupon_Info.do" , new Member_PonintAndCoupon_Info());
		
		// 가입
			//회원가입
			mapper.put("/Member_Insert.do", new Member_Insert());
			//중복체크 (nickname)
			mapper.put("/DuplicatedCheck.do", new DuplicatedCheckService());
			//회원가입 체크
			mapper.put("/MemberInserData.do", new MemberInsertDataService());
		// 호텔 리스트
		mapper.put("/HotelList.do", new HotelListService());
		// 호텔 인포
		mapper.put("/HotelInfo.do", new HotelInfoService());
		
		// 고객센터
			// 공지사항 페이지
			mapper.put("/Boarder_Notice.do", new NoticeService());
			// 공지사항 상세 페이지
			mapper.put("/DetailNotice.do", new DetailNoticeService());
			// 이벤트 페이지
			mapper.put("/Event.do", new EventPageService());
			// 고객센터 페이지
			mapper.put("/Customer_Service_Center.do", new Customer_Service_Center() );
			// 고객센터 자주묻는질문(비동기)
			mapper.put("/QAcategoryService.do" , new QAcategoryService());
		//위도 경도 업데이트
		mapper.put("/Test_update.do",new Test_update());
		// modal용 맵퍼
		mapper.put("/Modal.do", new ModalService());
		
		//로그인 및 로그아웃
			//로그인방식선택
			mapper.put("/Login.do", new LoginMainService());
			//카카오로그인
			mapper.put("/KakaoLogin.do", new KakaoLoginService());
			//아이디로그인
			mapper.put("/LoginInput.do", new LoginInputService());
			//네이버 로그인
			mapper.put("/Naver_Login.do",new NaverLoginService());
			//로그인 체크(비동기 용)
			mapper.put("/LoginCheck.do", new LoginCheckService());
			//로그인 체크(동기)
			mapper.put("/LoginInputCheck.do", new LoginInputCheckService());
			//로그아웃
			mapper.put("/Logout.do", new Member_LogoutService());
			
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
			//멤버 정보보기
			mapper.put("/admin_Modal_memberInfo.do",new Modal_adminMemberInfoService());
			//호스트신청정보보기
			mapper.put("/admin_Modal_applyHost.do",new Modal_adminApplyHostInfoService());
		//호스트신청 매니저(정보입력하기)
		mapper.put("/decideApplyHost.do", new ApplyHostManager());
		//호스트 신청(점수 올리기)
		mapper.put("/Member_applyHost.do", new Member_applyHostService());
		//호텔 수정하기(호스트)
		mapper.put("/host_hotel_mif.do", new Host_Hotel_Mif());
		//이미지 추가 및 수정
		mapper.put("/ImgUpload.do", new ImgUpload());
		//이미지 삭제
		mapper.put("/DeleteImg.do",new DeleteImg());
		//예약 데이터 추가
		mapper.put("/reserve_insert.do", new Reserve_InserService());
		//예약 취소
		mapper.put("/reserve_cancel.do", new Reserve_cancelService());
		//비회원 예약 조회
		mapper.put("/NoMember_Reserve_Info.do", new NoMember_Reserve_InfoService());
		
		//게시판 및 리뷰
			//게시글쓰기
			mapper.put("/BoarderWrite.do", new BoarderWriteService());
			//리뷰글쓰기
			mapper.put("/ReviewWrite.do", new ReviewWriteService());
			//게시글 업로드
			mapper.put("/BoarderUpload.do", new BoarderUploadService());
			//리뷰 업로드
			mapper.put("/ReviewUpload.do", new ReviewUploadService());
			
		//이벤트
			//출석체크
			mapper.put("/attendanceCheckEvent.do", new AttendanceCheckEventService());
		//호스트신청하기
		mapper.put("/Member_ApplytoHost.do", new Member_ApplytoHostService());
		//호텔 추가
		mapper.put("/InsertHotel.do", new HotelInsertService());
		//룸 추가
		mapper.put("/Room_add.do", new Room_addService());
		//룸 삭제
		mapper.put("/Host_Delete_Room.do", new Host_Delete_RoomService());
		// 추천 버튼 체크
		mapper.put("/check_up_btn.do", new UpBtnChecking());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}

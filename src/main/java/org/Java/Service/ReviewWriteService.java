package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.MemberDAO;
import org.Java.DAO.ReserveDAO;
import org.Java.DAO.ReviewDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;
import org.Java.VO.RoomVO;

public class ReviewWriteService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//리뷰작성은 회원만 가능
		String log = (String)request.getSession().getAttribute("log");
		
		//비로그인시 로그인화면으로
		if(log == null) {
			request.setAttribute("msg", "pleaseLogin");
			return "MsgPage";
		}
		//예약번호
		if(request.getParameter("no")==null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		
		int no = Integer.parseInt(request.getParameter("no"));
		boolean isReserveNoInReview = ReviewDAO.getInstance().isReserveNoInReview(no);
		if(isReserveNoInReview) {
			request.setAttribute("msg","ReviewExistence");
			return "MsgPage";
		}
		MemberVO memberVO = MemberDAO.getinstance().CheckLogin_API(log);
		ReserveVO reserveVO = ReserveDAO.getInstance().getOneDataByNo(no);
		HotelVO hotelVO = HotelDAO.getInstance().getHotelData(reserveVO.getHotel_no());
		RoomVO roomVO = RoomDAO.getInstance().getOneRoomData(reserveVO.getRoom_no());
		request.setAttribute("memberVO", memberVO);
		request.setAttribute("reserveVO", reserveVO);
		request.setAttribute("hotelVO", hotelVO);
		request.setAttribute("roomVO", roomVO);
		
		
		return "ReviewWritePage";
	}

}

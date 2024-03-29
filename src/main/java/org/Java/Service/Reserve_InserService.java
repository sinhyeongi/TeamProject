package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.Member_CouponDAO;
import org.Java.DAO.ReserveDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;
import org.Java.VO.RoomVO;

public class Reserve_InserService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("coupon_no") != null && request.getParameter("id") != null) {
			int no = Integer.parseInt(request.getParameter("coupon_no"));
			String id = request.getParameter("id");
			Member_CouponDAO.getInstance().DeleteUserCoupon(no, id);
		}
		ReserveVO vo = new ReserveVO();
		vo.setHotel_no(Integer.parseInt(request.getParameter("hotel_no")));
		vo.setRoom_no(Integer.parseInt(request.getParameter("room_no")));
		vo.setName(request.getParameter("name"));
		vo.setPhone(request.getParameter("phone"));
		vo.setRday(request.getParameter("rday"));
		vo.setDday(request.getParameter("dday"));
		vo.setPeople(Integer.parseInt(request.getParameter("people")));
		vo.setAdd_req(request.getParameter("add_req"));
		vo.setVisit(request.getParameter("visit"));
		vo.setUid(request.getParameter("uid"));
		vo.setId(request.getParameter("id"));
		vo.setPrice(Integer.parseInt(request.getParameter("price")));
		RoomVO room = RoomDAO.getInstance().getOneRoomData(vo.getRoom_no());
		if(room.getTotal_qty() <= 0) {
			response.getWriter().print("0");
			return null;
		}
		int cnt = 0;
		cnt = ReserveDAO.getInstance().InsertData(vo);
		if(cnt >0) {
			RoomDAO.getInstance().ReserveRoom(vo.getRoom_no());
		}
		response.getWriter().print(cnt);
		return null;
	}
}

package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.CouponDAO;
import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.Member_CouponDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Member_couponVO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

public class ReserveService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			if(request.getSession().getAttribute("log") != null) {
				Member_InfoVO vo = Member_InfoDAO.getInstance().getData((String)request.getSession().getAttribute("log"));
				ArrayList<Member_couponVO> coupon = Member_CouponDAO.getInstance().getData((String)request.getSession().getAttribute("log"));
				for(int i = 0 ; i < coupon.size(); i++) {
					coupon.get(i).setDislate(CouponDAO.getInstance().getDislate(coupon.get(i).getName()));
					coupon.get(i).setDisprice(CouponDAO.getInstance().getDisPrice(coupon.get(i).getName()));
				}
				request.setAttribute("coupon", coupon);
				request.setAttribute("user", vo);
			}
			RoomVO rovo = RoomDAO.getInstance().getOneRoomData(1);
			HotelVO hovo = HotelDAO.getInstance().getHotelData(rovo.getHotel_no());
			request.setAttribute("hotel", hovo);
			request.setAttribute("room", rovo);
			String img = null;
			ArrayList<String> url_list =ImgDAO.getInstance().getRoomUrl(rovo.getNo());  
			if(url_list.size() > 0) {
				img = url_list.get(0);
			}
			request.setAttribute("img", img);
			request.setAttribute("title", "예약 페이지");
			
		return "reserve";
	}
}

package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

public class Host_Hotel_Mif implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("no") == null) {
			return "re:Main";
		}else if(request.getParameter("rq") != null &&request.getParameter("rq").equals("update")) {
			HotelVO vo = new HotelVO();
			vo.setNo(Integer.parseInt(request.getParameter("no")));
			vo.setStar(Integer.parseInt(request.getParameter("star")));
			vo.setName(request.getParameter("name"));
			vo.setCheckin(request.getParameter("checkin"));
			vo.setCheckout(request.getParameter("checkout"));
			vo.setFac(request.getParameter("fac"));
			vo.setAccount(request.getParameter("account"));
			int cnt = 0;
			cnt = HotelDAO.getInstance().UpdateHotelData(vo);
			response.getWriter().print(cnt);
			return null;
		}
		int no = Integer.parseInt(request.getParameter("no"));
		String id =(String) request.getSession().getAttribute("log");
		MemberVO vo = MemberDAO.getinstance().CheckLogin_API(id);
		vo.setInfo(Member_InfoDAO.getInstance().getData(id));
		if(vo.getInfo() == null || vo.getInfo().getLevel() < 900) {
			return "re:Main";
		}
		HotelVO hotel = HotelDAO.getInstance().getHotelData(no);
		hotel.setUrl(ImgDAO.getInstance().getHotelUrl(hotel.getNo()));
		ArrayList<RoomVO> list = RoomDAO.getInstance().getRoomData(hotel.getNo());
		for(int i = 0 ; i < list.size(); i++) {
			list.get(i).setUrl(ImgDAO.getInstance().getRoomUrl(list.get(i).getNo()));
		}
		request.setAttribute("title", hotel.getName()+"호텔 정보 및 수정");
		request.setAttribute("hotel", hotel);
		request.setAttribute("room", list);
		return "host_hotel_modify";
	}
}

package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.RoomDAO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

public class Room_addService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(request.getMethod());
		if(request.getParameter("hotel_no") == null) {
			return "re:Main";
		}else if(request.getMethod().equals("POST") && request.getParameter("hotel_no") != null) {
			//추가 하기
			int cnt = 0;
			try {
				RoomVO vo = new RoomVO();
				vo.setHotel_no(Integer.parseInt(request.getParameter("hotel_no")));
				vo.setPrice(Integer.parseInt(request.getParameter("price")));
				vo.setName(request.getParameter("name"));
				vo.setTotal_qty(Integer.parseInt(request.getParameter("total_qty")));
				vo.setOcc(Integer.parseInt(request.getParameter("occ")));
				vo.setBedinfo(request.getParameter("bedinfo"));
				vo.setAmenities(request.getParameter("amenities"));
				cnt = RoomDAO.getInstance().InsertRoomData(vo);
			}catch(Exception e) {
				e.printStackTrace();
			}
			response.getWriter().print(cnt);
			return null;
		}
		request.setAttribute("hotel_no",request.getParameter("hotel_no"));
		return "AddRoom";
	}
}

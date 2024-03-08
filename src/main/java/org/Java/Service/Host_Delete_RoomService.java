package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.RoomDAO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

public class Host_Delete_RoomService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null || request.getMethod().equals("POST") == false) {
			return "re:Main";
		}
		int cnt = 0;
		try {
			RoomVO vo = new RoomVO();
			vo.setHotel_no(Integer.parseInt(request.getParameter("hotel_no")));
			vo.setNo(Integer.parseInt(request.getParameter("room_no")));
			cnt = RoomDAO.getInstance().Host_DeleteRoom(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		response.getWriter().print(cnt);
		return null;
	}
}

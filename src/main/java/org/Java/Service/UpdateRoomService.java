package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.RoomDAO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

public class UpdateRoomService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("room_no") == null) {
			return null;
		}
		RoomVO vo = new RoomVO();
		vo.setNo(Integer.parseInt(request.getParameter("room_no")));
		vo.setName(request.getParameter("name"));
		vo.setTotal_qty(Integer.parseInt(request.getParameter("total_qty")));
		vo.setOcc(Integer.parseInt(request.getParameter("occ")));
		vo.setPrice(Integer.parseInt(request.getParameter("price")));
		int cnt = 0;
		cnt = RoomDAO.getInstance().UpdateRoomData(vo);
		response.getWriter().print(cnt);
		return null;
	}
}

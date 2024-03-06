package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ReserveDAO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;

public class Reserve_InserService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		System.out.println(vo);
		int cnt = 0;
		cnt = ReserveDAO.getInstance().InsertData(vo);
		response.getWriter().print(cnt);
		return null;
	}
}

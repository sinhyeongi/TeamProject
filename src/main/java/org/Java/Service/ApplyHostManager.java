package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.MemberDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.Page;

public class ApplyHostManager implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String log = (String)request.getSession().getAttribute("log");
		if(log == null || !log.equals("admin")) {
			response.getWriter().write("error");
		}
		String decide = request.getParameter("decide");
		String id = request.getParameter("id");
		if(decide.equals("accept")) {
			//성급 * -1
			int cntHotel = HotelDAO.getInstance().acceptApplyHotel_star(id);
			//레벨 + 800
			int cntMember = MemberDAO.getinstance().acceptApplyMember_level(id);
			if(cntHotel > 0 && cntMember > 0) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("fail");
			}
		}else {
			//호텔 DB삭제.
			int cntHotel = HotelDAO.getInstance().deleteHotel_hostId(id);
			//레벨 - 100;
			int cntMember = MemberDAO.getinstance().declineApplyMember_level(id);
		}
		
		return null;
	}

}

package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ReserveDAO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;

public class AdminReserveService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null||request.getSession().getAttribute("log").equals("admin") == false) {
			return "re:Main";
		}
		ArrayList<ReserveVO> list = ReserveDAO.getInstance().Admin_getAll();
		request.setAttribute("title", "예약 관리 페이지");
		request.setAttribute("list", list);
		return "AdminReserve";
	}
}

package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ReserveDAO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;

public class NoMember_Reserve_InfoService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("phone") == null || request.getParameter("name") == null) {
			request.setAttribute("title", "비회원 예약 조회");
			return "NoMember_Reserve_Info";
		}
		ArrayList<ReserveVO> list = ReserveDAO.getInstance().getData_Phone(request.getParameter("phone"),request.getParameter("name"));
		request.setAttribute("list", list);
		request.setAttribute("title", "예약 목록");
		return "NoMember_Reserve_Info2";
	}
}

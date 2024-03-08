package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class DeleteUser implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("id") == null || request.getParameter("pw") == null) {
			return null;
		}
		if(request.getParameter("id").equals("admin")) {
			return null;
		}
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		int cnt = MemberDAO.getinstance().DeleteUser(vo);
		response.getWriter().print(cnt);
		if(cnt > 0) {
			request.getSession().removeAttribute("log");
			request.getSession().removeAttribute("log_level");
		}
		return null;
	}
}

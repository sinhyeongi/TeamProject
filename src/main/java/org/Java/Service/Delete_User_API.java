package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.Page;

public class Delete_User_API implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("id") == null) {
			return null;
		}
		int cnt = MemberDAO.getinstance().DeleteUser_API(request.getParameter("id"));
		if(cnt > 0) {
			request.getSession().removeAttribute("log");
			request.getSession().removeAttribute("log_level");
		}
		response.getWriter().print(cnt);
		return null;
	}
}

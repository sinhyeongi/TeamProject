package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.VO.Page;

public class Member_LogoutService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("log");
		if(id == null) {
			System.out.println("비로그인 상태");
			return "Main";
		}
		request.getSession().invalidate();
		request.setAttribute("msg", "logout");
		return "MsgPage";
	}

}

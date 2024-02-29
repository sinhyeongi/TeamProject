package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.Page;

public class DuplicatedCheckService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String inputNickname = request.getParameter("nickname");
		System.out.println("입력받은 값 = "+ inputNickname);
		//중복체크
		int check = MemberDAO.getinstance().checkNickname(inputNickname);
		if(check > 0) {
			response.getWriter().write("Duplicated");
		}
		return null;
	}

}

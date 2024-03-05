package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class LoginInputCheckService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("로그인 시도 id="+ id);
		System.out.println("로그인 시도 pw="+ pw);
		MemberVO vo = new MemberVO(); 
		vo.setId(id);
		vo.setPw(pw);
		MemberVO check = MemberDAO.getinstance().CheckLogin(vo);
		if(check == null) {
			System.out.println("로그인 실패.");
			return "LoginInput";
		}else {
			request.getSession().setAttribute("log", check.getId());
			return "Main";
		}
	}

}

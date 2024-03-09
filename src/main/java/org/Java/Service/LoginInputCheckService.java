package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class LoginInputCheckService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberVO vo = new MemberVO(); 
		vo.setId(id);
		vo.setPw(pw);
		MemberVO check = MemberDAO.getinstance().CheckLogin(vo);
		if(check == null) {
			System.out.println("로그인 실패.");
			return "LoginInput";
		}else {
			Member_InfoDAO.getInstance().Member_Info_LoginPoint(check.getId());
			check.setInfo(Member_InfoDAO.getInstance().getData(check.getId()));
			request.getSession().setAttribute("log", check.getId());
			request.getSession().setAttribute("log_level", check.getInfo().getLevel());
			return "re:Main";
		}
	}

}

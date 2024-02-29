package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class Member_InfoService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null) {
			return "re:Main";
		}
		String id = (String)request.getSession().getAttribute("log");
		
		MemberVO vo = MemberDAO.getinstance().CheckLogin_API(id);
		request.setAttribute("vo", vo);
		request.setAttribute("title", vo.getNickname()+" 회원정보");
		return "Member_Info";
	}
}

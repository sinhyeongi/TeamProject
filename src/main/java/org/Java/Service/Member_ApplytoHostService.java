package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class Member_ApplytoHostService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null) {
			return "re:Main";
		}
		MemberVO vo = MemberDAO.getinstance().CheckLogin_API((String)request.getSession().getAttribute("log"));
		vo.setInfo(Member_InfoDAO.getInstance().getData(vo.getId()));
		int level = vo.getInfo().getLevel();
		if(level >= 100 && level < 200) {
			response.getWriter().print("<script> alert('이미 호스트 신청이 되었습니다.'); location.href='Main.do'; </script>");
			return null;
		}else if(level >= 900 && vo.getId().equals("admin") == false) {
			response.getWriter().print("<script> alert('호스트 상태에서 신청은 불가능합니다.'); location.href='Main.do'; </script>");
			return null;
		}
		request.setAttribute("title", vo.getId()+" 호스트 신청페이지");
		request.setAttribute("vo", vo);
		return "Member_Applytohost";
	}
}

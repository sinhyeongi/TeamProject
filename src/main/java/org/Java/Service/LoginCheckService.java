package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class LoginCheckService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberVO vo = new MemberVO();
		int cnt = 0;
		if(id.indexOf("nv_") != -1 || id.indexOf("ka_") != -1) {
			MemberVO r = MemberDAO.getinstance().CheckLogin_API(request.getParameter("id"));
			if(r != null) {
				cnt++;
			}
			response.getWriter().print(cnt);
			return null;
		}
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		MemberVO r = MemberDAO.getinstance().CheckLogin(vo);
		if(r != null) {
			cnt++;
		}
		response.getWriter().print(cnt);
		return null;
	}
}

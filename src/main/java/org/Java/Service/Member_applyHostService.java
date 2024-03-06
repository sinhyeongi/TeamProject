package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Page;

public class Member_applyHostService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("log");
		MemberVO vo = MemberDAO.getinstance().CheckLogin_API(id);
		Member_InfoVO infoVO = Member_InfoDAO.getInstance().getData(vo.getId());
		if(vo==null || infoVO.getLevel() >= 101) {
			request.setAttribute("msg", "overLevel");
			return "MsgPage";
		}else {
			int check = Member_InfoDAO.getInstance().applyHost(vo.getId());
			if(check>0) {
				request.setAttribute("msg", "apply");
				return "MsgPage";
			}
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
	}
}

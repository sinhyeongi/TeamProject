package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class AdminMemberList implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String log = request.getParameter("log");
//		if(log==null || !log.equals("admin")) {
//			System.out.println("잘못된 접근");
//			//return "Main";
//			return "admin_memberList";
//		}
		ArrayList<MemberVO> list = MemberDAO.getinstance().getAll();
		
		request.setAttribute("list", list);
		return "admin_memberList";
	}
	

}

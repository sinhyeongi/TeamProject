package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_CouponDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Page;

public class MainService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "MainPage");
		ArrayList<MemberVO> list = MemberDAO.getinstance().getAll();
		ArrayList<Member_InfoVO> list2 = Member_InfoDAO.getInstance().getAll();

		for(int i = 0 ; i < list2.size(); i++) {
			list.get(i).setInfo(list2.get(i));
			list.get(i).setCoupon(Member_CouponDAO.getInstance().getData(list.get(i).getId()));
		}
		request.setAttribute("list", list);

		if(request.getSession().getAttribute("log") != null) {
			request.getSession().setAttribute("log_level", Member_InfoDAO.getInstance().getData((String)request.getSession().getAttribute("log")).getLevel());
		}

		return "Main";
	}
}

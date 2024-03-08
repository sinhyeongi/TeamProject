package org.Java.Service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Page;

public class Modal_adminApplyHostInfoService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		MemberVO mVO = MemberDAO.getinstance().getMemberByNo(no);
		HotelVO hVO = HotelDAO.getInstance().Host_getHotel(mVO.getId());
		Member_InfoVO mInfoVO = Member_InfoDAO.getInstance().getData(mVO.getId());
		request.setAttribute("hVO", hVO);
		request.setAttribute("mVO", mVO);
		request.setAttribute("mInfoVO", mInfoVO);
		return "Modal:"+request.getParameter("Modal_page");
	}

}

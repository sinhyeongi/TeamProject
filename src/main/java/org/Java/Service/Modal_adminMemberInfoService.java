package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_CouponDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.DAO.ReserveDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Member_couponVO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;

public class Modal_adminMemberInfoService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("Modal_page") == null) {
			return null;
		}
		int no = Integer.parseInt(request.getParameter("no"));
		MemberVO vo = MemberDAO.getinstance().getMemberByNo(no);
		ArrayList<Member_couponVO> couponList = Member_CouponDAO.getInstance().getData(vo.getId());
		Member_InfoVO info = Member_InfoDAO.getInstance().getDataById(vo.getId());
		ArrayList<ReserveVO> reserveList = ReserveDAO.getInstance().getData(vo.getId());
		
		request.setAttribute("member_vo", vo);
		request.setAttribute("couponList", couponList);
		request.setAttribute("info_vo", info);
		request.setAttribute("reserveList", reserveList);
		
		return "Modal:"+request.getParameter("Modal_page");
	}

}

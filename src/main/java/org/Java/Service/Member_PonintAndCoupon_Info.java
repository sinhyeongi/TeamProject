package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.Member_CouponDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Member_couponVO;
import org.Java.VO.Page;

public class Member_PonintAndCoupon_Info implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null) {
			return "re:Main";
		}
		String id = (String)request.getSession().getAttribute("log");
		ArrayList<Member_couponVO> list = Member_CouponDAO.getInstance().getData(id);
		Member_InfoVO info = Member_InfoDAO.getInstance().getData(id);
		
		for(Member_couponVO vo : list) {
			vo.setDislate(Member_CouponDAO.getInstance().getDisLate(vo.getName()));
			vo.setDisprice(Member_CouponDAO.getInstance().getDisPrice(vo.getName()));
		}
		request.setAttribute("list", list);
		request.setAttribute("info", info);
		request.setAttribute("title", id+"포인트 및 쿠폰");
		return "Member_PointAndCoupon_Info";
	}

}

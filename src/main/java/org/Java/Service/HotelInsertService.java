package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.Util.AddressUtil_kakao;
import org.Java.VO.HotelVO;
import org.Java.VO.Page;

public class HotelInsertService implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("id") == null ) {
			return "Main.do";
		}
		HotelVO vo = new HotelVO();
		vo.setHost(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setTel(request.getParameter("tel"));
		vo.setStar(Integer.parseInt(request.getParameter("star")) * -1);
		vo.setAddress(request.getParameter("address"));
		vo.setFac(request.getParameter("fac"));
		vo.setCheckin(request.getParameter("checkin"));
		vo.setCheckout(request.getParameter("checkout"));
		vo.setAccount(request.getParameter("account"));
		String s[] = AddressUtil_kakao.getXY(vo.getAddress()).split("/");
		vo.setX(s[1]);
		vo.setY(s[0]);
		vo.setArea(Integer.parseInt(s[2]));
		int cnt = 0;
		cnt = HotelDAO.getInstance().InsertHotel(vo);
		if(cnt == 1) {
			Member_InfoDAO.getInstance().applyHost(vo.getHost());
		}
		response.getWriter().print(cnt);
		return null;
	}
}

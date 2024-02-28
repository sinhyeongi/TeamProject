package org.Java.Test;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.Util.AddressUtil_kakao;
import org.Java.VO.HotelVO;
import org.Java.VO.Page;

public class Test_update implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<HotelVO> list = HotelDAO.getInstance().getAll();
		int cnt = 0;
		for(int i = 0 ; i < list.size(); i++) {
			String addr = list.get(i).getAddress();
			String xy[] = AddressUtil_kakao.getXY(addr).split("/");
			HotelVO vo = new HotelVO();
			vo.setNo(list.get(i).getNo());
			vo.setX(xy[1]);
			vo.setY(xy[0]);
			vo.setArea(Integer.parseInt(xy[2]));
			 cnt += HotelDAO.getInstance().UpdateXY(vo);
		}
		
		response.getWriter().print(cnt);
		return "re:Main";
	}

}

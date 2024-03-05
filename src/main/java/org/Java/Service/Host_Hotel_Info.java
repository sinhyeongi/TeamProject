package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;

public class Host_Hotel_Info implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null) {
			return "re:Main";
		}
		String id = (String)request.getSession().getAttribute("log");
		MemberVO vo = MemberDAO.getinstance().CheckLogin_API(id);
		vo.setInfo(Member_InfoDAO.getInstance().getData(id));
		if(vo.getInfo().getLevel() < 900) {
			return "re:Main";
		}
		ArrayList<HotelVO> list = new ArrayList<HotelVO>();
		list = HotelDAO.getInstance().Host_getAll(id);
		ImgDAO img = ImgDAO.getInstance();
		for(int i = 0 ; i < list.size(); i++) {
			list.get(i).setUrl(img.getHotelUrl(list.get(i).getNo()));
		}
		list = (ArrayList<HotelVO>)list.stream().sorted((n,n2) ->{
			return n.getArea() - n2.getArea();
		}).collect(Collectors.toList());
		System.out.println("size = 	"+list.get(0).getUrl().size());
		request.getSession().setAttribute("title", id+"의 호텔 리스트");
		request.setAttribute("hotel", list);
		return "host_hotel_info";
	}
}

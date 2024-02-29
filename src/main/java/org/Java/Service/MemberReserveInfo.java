package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ReserveDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.Page;
import org.Java.VO.ReserveVO;

public class MemberReserveInfo implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log") == null) {
			return "re:Main";
		}
		String id = (String)request.getSession().getAttribute("log");
		ArrayList<ReserveVO> list = ReserveDAO.getInstance().getData(id);
		list = (ArrayList<ReserveVO>)list.stream().sorted((n,n2)->{
			return  n.getHotel_no() - n2.getHotel_no();
		}).collect(Collectors.toList());
		for(int i = 0 ; i < list.size(); i++) {
			list.get(i).setHotel_name(HotelDAO.getInstance().getHotelName(list.get(i).getHotel_no()));
			list.get(i).setRoom_name(RoomDAO.getInstance().getRoomName(list.get(i).getRoom_no()));
		}
		request.setAttribute("list", list);
		request.setAttribute("title", id+"회원 예약 정보");
		return "Member_Reserve_Info";
	}
}

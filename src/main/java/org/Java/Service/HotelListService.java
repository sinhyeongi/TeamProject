package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.ReviewDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.Page;

import com.google.gson.Gson;

public class HotelListService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<HotelVO> list = HotelDAO.getInstance().getAll();
		if(request.getParameter("category") != null && !request.getParameter("category").equals("")) {
			int category = (int)(Double.parseDouble(request.getParameter("category"))*1000);
			int max = 1000;
			if(category % 100 != 0 ) {
				max = 20;
			}
			System.out.println(category);
			for(int i = 0 ; i < list.size(); i++) {
				if(list.get(i).getArea() < category||list.get(i).getArea() > (category+max)) {
					list.remove(i);
					i--;
				}
			}
			request.setAttribute("category", request.getParameter("category"));
		}
	
		for(int i = 0 ; i < list.size(); i++) {
			if(list.get(i).getArea() < 0) {
				list.remove(i);
				i--;
				continue;
			}
			list.get(i).setPrice(RoomDAO.getInstance().getRoomData(list.get(i).getNo()).get(0).getPrice());
			list.get(i).setReviewCount(ReviewDAO.getInstance().getHotelReviewCount(list.get(i).getNo()));
			list.get(i).setUrl(ImgDAO.getInstance().getHotelUrl(list.get(i).getNo()));
		}
		request.setAttribute("list", list);
		
		Gson gson = new Gson();
		String ctg_hotelList = gson.toJson(list);
		request.setAttribute("htList", ctg_hotelList);
		
		return "hotelList";
	}

}

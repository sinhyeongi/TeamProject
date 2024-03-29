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
import org.Java.VO.ReviewVO;
import org.Java.VO.RoomVO;

import com.google.gson.Gson;

public class HotelListService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<HotelVO> list = HotelDAO.getInstance().getAll();
		
		ArrayList<ReviewVO> reviewList = ReviewDAO.getInstance().getAllReview(); 
		for(int i = 0; i < list.size(); i+=1) {
			int cnt = 0;
			int sum = 0; // 모든 총점의 합 
			for(int k = 0; k < reviewList.size(); k+=1) {
				if(list.get(i).getNo() == reviewList.get(k).getHotel_no()) {
					sum += reviewList.get(k).getStar_point();
					cnt += 1;
				}
			}
			if( cnt > 0) {
				list.get(i).setStar_point(Math.round(sum / cnt));
			}
		}
		
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
			}else if(RoomDAO.getInstance().getRoomData(list.get(i).getNo()) == null || 
					RoomDAO.getInstance().getRoomData(list.get(i).getNo()).size() == 0){
				list.remove(i);
				i--;
				continue;
				} 
				list.get(i).setPrice(RoomDAO.getInstance().getRoomData(list.get(i).getNo()).get(0).getPrice());
				list.get(i).setReviewCount(ReviewDAO.getInstance().getHotelReviewCount(list.get(i).getNo()));
				list.get(i).setUrl(ImgDAO.getInstance().getHotelUrl(list.get(i).getNo()));
			
		}
		request.setAttribute("title", "호텔리스트");
		request.setAttribute("list", list);
		// 배열을 자바스크립트로 넘겨주기
		Gson gson = new Gson();
		String ctg_hotelList = gson.toJson(list);
		request.setAttribute("htList", ctg_hotelList);
		
		return "hotelList";
	}

}

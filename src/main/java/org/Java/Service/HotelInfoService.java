package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.MemberDAO;
import org.Java.DAO.ReviewDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.Java.VO.ReviewVO;
import org.Java.VO.RoomVO;

import com.google.gson.Gson;

public class HotelInfoService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		  if(request.getParameter("no") == null) { return "re:Main"; } int no =
		  Integer.parseInt(request.getParameter("no"));
		 
			/* int no = 1; */
		ArrayList<String> imgList = new ArrayList<String>();
		
		HotelVO hotel = HotelDAO.getInstance().getHotelData(no);
		hotel.setUrl(ImgDAO.getInstance().getHotelUrl(hotel.getNo()));
		ArrayList<RoomVO> roomList = RoomDAO.getInstance().getRoomData(hotel.getNo());
		imgList.addAll(hotel.getUrl());
		for(int i = 0 ; i < roomList.size(); i++) {
			roomList.get(i).setUrl(ImgDAO.getInstance().getRoomUrl(roomList.get(i).getNo()));
			imgList.addAll(roomList.get(i).getUrl());
		}
		String host = hotel.getHost();
		System.out.println("host = " + host);
		MemberVO m_vo = new MemberVO();
		m_vo = MemberDAO.getinstance().getHostInfo(host);
		
		// 한 호텔에 대한 리뷰 총 개수
		int count = ReviewDAO.getInstance().getHotelReviewCount(no);
		hotel.setReviewCount(count);
		
		// 한 호텔에 대한 모든 리뷰(추천수 내림차순)
		ArrayList<ReviewVO> reviewList = ReviewDAO.getInstance().getAllHotelReview(no);
		
		int allStar_p = 0; // 모든 평점
		for(int i = 0 ; i < reviewList.size(); i++) {
			reviewList.get(i).setUrl(ImgDAO.getInstance().getReviewUrl(reviewList.get(i).getNo()));
			allStar_p += reviewList.get(i).getStar_point();
		}

		int star_point = 0;
		if(reviewList.size() == 0 || allStar_p == 0) {
			star_point = 0;
		} else {
			star_point = Math.round(allStar_p / reviewList.size());
		}
		hotel.setStar_point(star_point);
		request.setAttribute("title", hotel.getName()+" 정보");
		request.setAttribute("hotel" , hotel);
		request.setAttribute("room" , roomList);
		request.setAttribute("imgList", imgList);
		request.setAttribute("m_vo", m_vo);
		request.setAttribute("reviewList", reviewList);
		
		
		
		return "hotelInfo";
	}

}

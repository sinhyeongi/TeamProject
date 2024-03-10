package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.BoardDAO;
import org.Java.DAO.ReviewDAO;
import org.Java.VO.BoarderVO;
import org.Java.VO.Page;
import org.Java.VO.ReviewVO;

public class ReviewUploadService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("log");
		if(id ==null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		String nickname= request.getParameter("nickname");
		int hotel_no= Integer.parseInt(request.getParameter("hotel_no"));
		int room_no= Integer.parseInt(request.getParameter("room_no"));
		int star_point= Integer.parseInt(request.getParameter("star_point"));
		String content= request.getParameter("content");
		int res_no= Integer.parseInt(request.getParameter("res_no"));
		
		
		ReviewVO vo = new ReviewVO();
		vo.setNickname(nickname);
		vo.setHotel_no(hotel_no);
		vo.setRoom_no(room_no);
		vo.setStar_point(star_point);
		vo.setContent(content);
		vo.setRes_no(res_no);
		
		int cnt = ReviewDAO.getInstance().uploadReview(vo); 
		
		request.setAttribute("msg", "success");
		return "MsgPage";
	}

}

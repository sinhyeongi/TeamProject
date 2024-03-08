package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ReviewDAO;
import org.Java.VO.Page;
import org.Java.VO.ReviewVO;

public class UpBtnChecking implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("log");
		System.out.println("id = " + id);
		if(id == null) {
			response.getWriter().write("로그아웃 상태");
		}
		int no = Integer.parseInt(request.getParameter("no")); // 리뷰 번호
		System.out.println("리뷰번호 : " + no);
		
		int review_cnt = Integer.parseInt(request.getParameter("rec_cnt")); // 추천수
		System.out.println("추천수 : " + review_cnt);
		
	  ArrayList<ReviewVO> reviewList = ReviewDAO.getInstance().getAllReview();
	  for(int i = 0; i < reviewList.size(); i+=1) {
		  if(reviewList.get(i).getNo() == no) {
			  review_cnt += 1;
			  reviewList.get(i).setCount(review_cnt);
			  break;
		  }
	  }
		System.out.println("추천 후 추천수 : " + review_cnt);
		ReviewDAO.getInstance().updateReviewCnt(review_cnt, no);
		response.getWriter().write(String.valueOf(review_cnt));
		return null;
	}

}

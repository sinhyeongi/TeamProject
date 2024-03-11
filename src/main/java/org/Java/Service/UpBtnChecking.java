package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.ReviewDAO;
import org.Java.DAO.Review_RecDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.Java.VO.ReviewVO;
import org.Java.VO.Review_RecVO;

public class UpBtnChecking implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("log");
		System.out.println("id = " + id);
		if(id == null) {
			response.getWriter().write("로그아웃 상태");
			return null;
		}
		int no = Integer.parseInt(request.getParameter("no")); // 리뷰 번호
		System.out.println("리뷰번호 : " + no);
		
		int review_cnt = Integer.parseInt(request.getParameter("rec_cnt")); // 추천수
		System.out.println("추천수 : " + review_cnt);
		
		//작성자 닉네임
	  String nickName = (String)request.getParameter("nickName");
	  
	  String review_id =""; // 추천 누르려는 해당 리뷰 작성자의 id
	  // 모든 회원 리스트
	  ArrayList<MemberVO> memberList = MemberDAO.getinstance().getAll();
	  for(int i = 0; i < memberList.size(); i+=1) {
		  if(memberList.get(i).getNickname().equals(nickName)) {
			  review_id = memberList.get(i).getId();
			  break;
		  }
	  }
	  
	  if(review_id.equals(id)) {
		  response.getWriter().write("본인의 리뷰는 추천할 수 없습니다");
		  return null;
	  }
	  
	  // 모든 리뷰 추천 테이블
	  int check = 0;
		 ArrayList<Review_RecVO> recList = Review_RecDAO.getInstance().getAllReviewRec();
		 if(recList.size() > 0) {
			  for(int i = 0; i < recList.size(); i+=1) {
				  if(recList.get(i).getNo() == no) {
					  if(recList.get(i).getId().equals(id)) {
						  check=1;
						  break;
					  }
				  }
			  }
		 };
		 if(check > 0) {
			  response.getWriter().write("이미 추천한 리뷰입니다");
			  return null;
		 }
	  //
		 
		 ArrayList<ReviewVO> reviewList = ReviewDAO.getInstance().getAllReview();
		  for(int i = 0; i < reviewList.size(); i+=1) {
			  if(reviewList.get(i).getNo() == no) {
				  review_cnt += 1;
				  reviewList.get(i).setCount(review_cnt);
				  break;
			  }
		  }
		  
	  	 Review_RecVO recvo = new Review_RecVO();
	  	 recvo.setNo(no);
	  	 recvo.setId(id);
	  	 int cnt = Review_RecDAO.getInstance().addReviewRec(recvo);
	  	 
		 
		System.out.println("추천 후 추천수 : " + review_cnt);
		ReviewDAO.getInstance().updateReviewCnt(review_cnt, no);
		response.getWriter().write(String.valueOf(review_cnt));
		return null;
	}

}

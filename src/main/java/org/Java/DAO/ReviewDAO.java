package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.ReviewDB;
import org.Java.VO.MemberVO;
import org.Java.VO.ReviewVO;

public class ReviewDAO {
	private static ReviewDAO instance;
	private ReviewDB db;
	private ReviewDAO() {
		db = new ReviewDB();
	}
	public static ReviewDAO getInstance() {
		if(instance == null) {
			instance = new ReviewDAO();
		}
		return instance;
	}
	public int getHotelReviewCount(int Hotel_no) {
		return db.getHotelReviewCount(Hotel_no);
	}
	public ArrayList<ReviewVO> getAllHotelReview(int Hotel_no){
		return db.getAllHotelReview(Hotel_no);
	}
}

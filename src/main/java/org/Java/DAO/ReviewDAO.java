package org.Java.DAO;

import org.Java.DB.ReviewDB;

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
}

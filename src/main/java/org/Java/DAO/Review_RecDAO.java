package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.Review_RecDB;
import org.Java.VO.Review_RecVO;

public class Review_RecDAO {
	private static Review_RecDAO instance;
	private Review_RecDB db;
	private Review_RecDAO() {
		db = new Review_RecDB();
	}
	public static Review_RecDAO getInstance() {
		if(instance == null) {
			instance = new Review_RecDAO();
		}
		return instance;
	}
	public ArrayList<Review_RecVO> getAllReviewRec(){
		return db.getAllReviewRec();
	}
	public int addReviewRec(Review_RecVO vo) {
		return db.addReviewRec(vo);
	}
	
}

package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.Member_CouponDB;
import org.Java.VO.Member_couponVO;

public class Member_CouponDAO {
	private static Member_CouponDAO instance;
	private Member_CouponDB db;
	private Member_CouponDAO() {
		db = new Member_CouponDB();
	}
	public static Member_CouponDAO getInstance() {
		if(instance == null) {
			instance = new Member_CouponDAO();
		}
		return instance;
	}
	public ArrayList<Member_couponVO> getData(String id){
		return db.getData(id);
	}
}

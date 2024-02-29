package org.Java.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	public int insertMemberCoupon(String id,String CouponName) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("name", CouponName);
		int check = db.insertMemberCoupon(map);
		System.out.println("멤버쿠폰"+(check>0?"성공":"실패"));
		return check;
	}
}

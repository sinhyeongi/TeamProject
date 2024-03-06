package org.Java.DAO;

import org.Java.DB.CouponDB;

public class CouponDAO {
	private static CouponDAO instance;
	private CouponDB db;
	private CouponDAO(){
		db = new CouponDB();
	}
	public static CouponDAO getInstance() {
		if(instance == null) {
			instance = new CouponDAO();
		}
		return instance;
	}
	public int getDislate(String name) {
		return db.getDislate(name);
	}
	public int getDisPrice(String name) {
		return db.getDisPrice(name);
	}
}

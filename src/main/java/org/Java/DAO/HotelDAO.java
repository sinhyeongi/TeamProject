package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.HotelDB;
import org.Java.VO.HotelVO;

public class HotelDAO {
	private static HotelDAO instance;
	private HotelDB db;
	private HotelDAO() {
		db = new HotelDB();
	}
	public static HotelDAO getInstance() {
		if(instance == null) {
			instance = new HotelDAO();
		}
		return instance;
	}
	public ArrayList<HotelVO> getAll(){
		return db.getAll();
	}
	public int UpdateXY(HotelVO vo) {
		return db.update_XY(vo);
	}
	
}

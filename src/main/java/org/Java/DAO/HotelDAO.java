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
	//전체 데이터
	public ArrayList<HotelVO> getAll(){
		return db.getAll();
	}
	// 호스트가 가지고있는 호텔 전체 리턴
	public ArrayList<HotelVO> Host_getAll(String id){
		return db.Host_getAll(id);
	}
	//업데이트 경도,위도
	public int UpdateXY(HotelVO vo) {
		return db.update_XY(vo);
	}
	// 호텔 번호에 따른 호텔 이름 리턴
	public String getHotelName(int no) {
		return db.getHotelName(no);
	}
	
}

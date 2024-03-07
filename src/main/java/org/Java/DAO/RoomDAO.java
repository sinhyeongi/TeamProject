package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.RoomDB;
import org.Java.VO.RoomVO;

public class RoomDAO {
	private static RoomDAO instance;
	private RoomDB db;
	private RoomDAO() {
		db = new RoomDB();
	}
	public static RoomDAO getInstance() {
		if(instance == null) {
			instance = new RoomDAO();
		}
		return instance;
	}
	public RoomVO getOneRoomData(int no) {
		return db.getOneRoomData(no);
	}
	public String getRoomName(int no) {
		return db.getRoomName(no);
	}
	public ArrayList<RoomVO> getRoomData(int hotel_no){
		return db.getRoomData(hotel_no);
	}
	public int ReserveRoom(int room_no) {
		return db.ReserveRoom(room_no);
	}
	public int ReserveCancelRoom(int room_no) {
		return db.ReserveCancelRoom(room_no); 
	}
}

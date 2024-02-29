package org.Java.DAO;

import org.Java.DB.RoomDB;

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
	public String getRoomName(int no) {
		return db.getRoomName(no);
	}
}

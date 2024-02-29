package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.ReserveDB;
import org.Java.VO.ReserveVO;

public class ReserveDAO {
	private static ReserveDAO instance;
	private ReserveDB db;
	private ReserveDAO() {
		db = new ReserveDB();
	}
	public static ReserveDAO getInstance() {
		if(instance == null) {
			instance = new ReserveDAO();
		}
		return instance;
	}
	public ArrayList<ReserveVO> getAll(){
		ArrayList<ReserveVO> list = new ArrayList<ReserveVO>();
		return list;
	}
	public ArrayList<ReserveVO> getData(String id){
		return db.getData(id);
	}
}

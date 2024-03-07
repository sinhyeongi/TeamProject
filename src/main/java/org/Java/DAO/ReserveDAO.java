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
	public ArrayList<ReserveVO> getData_Phone(String Phone,String name){
		return db.getData_Phone(Phone,name);
	}
	public ArrayList<ReserveVO> getData(String id){
		return db.getData(id);
	}
	public int InsertData(ReserveVO vo) {
		return db.InsertData(vo);
	}
	public int ReserveCancel_uid(String uid) {
		return db.ReserveCancel_uid(uid);
	}
}

package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.Member_InfoDB;
import org.Java.VO.Member_InfoVO;

public class Member_InfoDAO {
	private static Member_InfoDAO instance;
	private Member_InfoDB db;
	private Member_InfoDAO(){
		db = new Member_InfoDB();
	}
	public static Member_InfoDAO getInstance() {
		if(instance == null) {
			instance = new Member_InfoDAO();
		}
		return instance;
	}
	public ArrayList<Member_InfoVO> getAll(){
		return db.getAll();
	}
	
	public int insertMemberInfo(String id) {
		return db.insertMemberInfo(id);
	}
	public Member_InfoVO getData(String id) {
		return db.getData(id);
	}
	public int applyHost(String id) {
		return db.applyHost(id);
	}
	public int updateAttendanceCheck(String id) {
		return db.updateAttendanceCheck(id);
	}
	
	public int Member_Info_LoginPoint(String id) {
		return db.Member_Info_LoginPoint(id);
	}
}

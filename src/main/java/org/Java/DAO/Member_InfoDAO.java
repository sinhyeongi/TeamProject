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
	public Member_InfoVO getDataById(String id) {
		return db.getDataById(id);
	}

}

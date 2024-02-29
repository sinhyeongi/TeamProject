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
		int check = db.insertMemberInfo(id);
		System.out.println("멤버정보"+(check>0?"성공":"실패"));
		return check;
	}

}

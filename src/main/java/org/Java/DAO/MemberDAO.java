package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.MemberDB;
import org.Java.VO.MemberVO;
public class MemberDAO {

		private static MemberDAO instance;
		private MemberDB db;
		private MemberDAO() {
			db = new MemberDB();
		}
		public static MemberDAO getinstance() {
			if(instance == null) {
				instance = new MemberDAO();
			}
			return instance;
		}
		public ArrayList<MemberVO> getAll(){
			return db.getAll();
		}
		public String checkId(String id) {
			String check = db.getdbId(id);
			return check;
		}

}

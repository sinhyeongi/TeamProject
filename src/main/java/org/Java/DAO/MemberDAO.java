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
		//자체 유저 체크
		public MemberVO CheckLogin(MemberVO vo) {
			return db.CheckLogin(vo);
		}
		// 카카오,네이버 등 아이디 있는지 체크
		public MemberVO CheckLogin_API(String id) {
			return db.CheckLogin_API(id);
		}
		// 카카오,네이버 등 외부 회원 정보 삭제(회원탈퇴)
		public int DeleteUser_API(String id) {
			return db.DeleteUser_API(id);
		}
		//자체 회원 회원 탈퇴
		public int DeleteUser(MemberVO vo) {
			return db.DeleteUser(vo);
		}
}

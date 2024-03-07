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
		public MemberVO getMemberByNo(int no) {
			return db.getMemberByNo(no);
		}
		//아이디 중복체크
		public int checkId(String id) {
			return db.getdbId(id);
		}
		//닉네임 중복체크
		public int checkNickname(String nickname) {
			return db.getdbNickname(nickname);
		}
		//이메일 중복체크
		public int checkEmail(String email) {
			return db.getdbEmail(email);
		}
		//연락처 중복체크
		public int checkPhone(String Phone) {
			return db.getdbPhone(Phone);
		}
		public boolean insertMember(MemberVO vo) {
			int checkInsertMember = db.insertMember(vo);
			int checkMemberInfo = Member_InfoDAO.getInstance().insertMemberInfo(vo.getId());
			int checkCoupon = Member_CouponDAO.getInstance().insertMemberCoupon(vo.getId(),"Wellcome");
			
			if(checkCoupon > 0 && checkMemberInfo > 0 && checkInsertMember > 0 ) {
				System.out.println("회원가입 성공");
				return true;
			}else {
				System.out.println("회원가입 실패");
				return false;
			}
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
		// 판매자(호스트) 정보 찾기
		public MemberVO getHostInfo(String host) {
			return db.getHostInfo(host);
		}
}

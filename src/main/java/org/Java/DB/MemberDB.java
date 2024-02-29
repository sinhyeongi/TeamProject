package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.MemberVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDB {
	private static SqlSessionFactory sf;
	static {
		try {
			String re = "org/Java/MyBatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(re);
			sf = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberVO> getAll(){
		SqlSession se = sf.openSession();
		List<MemberVO> list = se.selectList("member_getAll");
		se.close();
		return (ArrayList<MemberVO>) list;
	}


	//로그인 아이디,비밀번호가 맞는지 체크
	public MemberVO CheckLogin(MemberVO vo) {
		SqlSession se = sf.openSession();
		MemberVO rq = se.selectOne("Check_Login", vo);
		se.close();
		return rq;
	}
	//외부 (네이버,카카오 등)에서 가입한 회원 id 값만 가지고 있는지 체크
	public MemberVO CheckLogin_API(String id) {
		MemberVO vo = new MemberVO();
		SqlSession se = sf.openSession();
		vo = se.selectOne("CheckLogin_API", id);
		se.close();
		return vo;
	}
	public int DeleteUser_API(String id) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.delete("DeleteUser_API",id);
		se.commit();
		se.close();
		return cnt;
	}
	public int DeleteUser(MemberVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.delete("DeleteUser",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public int getdbNickname(String nickname) {
		SqlSession se = sf.openSession();
		int checkCount = se.selectOne("member_checkNickname", nickname);
		se.close();
		return checkCount;
	}
	public int insertMember(MemberVO vo) {
		SqlSession se = sf.openSession();
		int check = se.insert("member_insertMember",vo);
		se.commit();
		se.close();
		return check;
	}

}


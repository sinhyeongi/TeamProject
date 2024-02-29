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
	public MemberVO getMemberVOById(String id) {
		SqlSession se = sf.openSession();
		MemberVO checkCount = se.selectOne("member_checkId",id);
		se.close();
		return checkCount;
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


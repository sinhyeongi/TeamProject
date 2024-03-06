package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.Member_InfoVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Member_InfoDB {
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
	public ArrayList<Member_InfoVO> getAll(){
		SqlSession se = sf.openSession();
		List<Member_InfoVO> list = se.selectList("member_info_getAll");
		se.close();
		return (ArrayList<Member_InfoVO>) list;
	}
	public int insertMemberInfo(String id) {
		SqlSession se = sf.openSession();
		int check = se.insert("member_info_insert",id);
		se.commit();
		se.close();
		return check;
	}
	public Member_InfoVO getData(String id) {
		SqlSession se = sf.openSession();
		Member_InfoVO vo = se.selectOne("Member_Info_getData",id);
		se.close();
		return vo;
	}
	public int applyHost(String id) {
		SqlSession se = sf.openSession();
		int check = se.update("Member_Info_applyHost", id);
		se.commit();
		se.close();
		return check;
	}
}

package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.Java.VO.Member_couponVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Member_CouponDB {
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
	public ArrayList<Member_couponVO> getData(String id){
		SqlSession se = sf.openSession();
		List<Member_couponVO> list = se.selectList("member_coupon_get",id);
		se.close();
		return (ArrayList<Member_couponVO>) list;
	}
	public int insertMemberCoupon(Map<String, String> map) {
		SqlSession se = sf.openSession();
		int check = se.insert("member_coupon_insert", map);
		se.commit();
		se.close();
		return check;
	}
}

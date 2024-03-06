package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CouponDB {
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
	public int getDislate(String name) {
		SqlSession se = sf.openSession();
		int late = se.selectOne("Coupon_getDislate",name);
		se.close();
		return late;
	}
	public int getDisPrice(String name) {
		SqlSession se = sf.openSession();
		int late = se.selectOne("Coupon_getDisprice",name);
		se.close();
		return late;
	}
}

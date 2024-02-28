package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.HotelVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class HotelDB {
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
	public ArrayList<HotelVO> getAll(){
		SqlSession se = sf.openSession();
		List<HotelVO> list = se.selectList("hotel_getAll");
		se.close();
		return (ArrayList<HotelVO>)list;
	}
	public int update_XY(HotelVO vo) {
		SqlSession se = sf.openSession();
		int cnt = se.update("hotel_update_XY", vo);
		se.commit();
		se.close();
		return cnt;
	}
}

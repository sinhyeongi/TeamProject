package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ImgDB {
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
	public ArrayList<String> getHotelUrl(int no) {
		SqlSession se = sf.openSession();
		List<String> url = se.selectList("img_getHotelUrl",no);
		se.close();
		return (ArrayList<String>)url;
	}
	public ArrayList<String> getRoomUrl(int no){
		SqlSession se = sf.openSession();
		List<String> list = se.selectList("img_getRoomUrl",no);
		se.close();
		return (ArrayList<String>) list;
	}
}

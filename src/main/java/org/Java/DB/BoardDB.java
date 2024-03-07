package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.BoarderVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDB {
	private static SqlSessionFactory sf;
	static {
		String re = "org/Java/MyBatis/config.xml";
		try {
			InputStream inputStream = Resources.getResourceAsStream(re);
			sf = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<BoarderVO> getCateList(String category){
		SqlSession session = sf.openSession();
		List<BoarderVO> list=null;
		if(category.equals("TOP7")){
			list = session.selectList("boarder_getTop7List",category);
		}else {
			list = session.selectList("boarder_getCateList",category);
		}
		session.close();
		return (ArrayList<BoarderVO>)list;
	}
	
	
}

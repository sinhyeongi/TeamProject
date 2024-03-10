package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.Review_RecVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Review_RecDB {
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
	
	public ArrayList<Review_RecVO> getAllReviewRec(){
		SqlSession se = sf.openSession();
		List<Review_RecVO> list = se.selectList("getAllReviewRec");
		se.close();
		return (ArrayList<Review_RecVO>) list;
	}
	
	public int addReviewRec(Review_RecVO vo) {
		SqlSession se = sf.openSession();
		int cnt = 0;
		cnt = se.insert("addReviewRec",vo);
		se.commit();
		se.close();
		return cnt;
	}
	
}

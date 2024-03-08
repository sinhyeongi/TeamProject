package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.Java.VO.MemberVO;
import org.Java.VO.ReviewVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ReviewDB {
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
	public int getHotelReviewCount(int Hotel_no) {
		SqlSession se = sf.openSession();
		int cnt = 0;
		cnt = se.selectOne("getHotelReviewCount",Hotel_no);
		se.close();
		return cnt;
	}
	public ArrayList<ReviewVO> getAllHotelReview(int Hotel_no){
		SqlSession se = sf.openSession();
		List<ReviewVO> list = se.selectList("getAllHotelReview",Hotel_no);
		se.close();
		return (ArrayList<ReviewVO>) list;
	}
	public ArrayList<ReviewVO> getAllReview(){
		SqlSession se = sf.openSession();
		List<ReviewVO> list = se.selectList("getAllReview");
		se.close();
		return (ArrayList<ReviewVO>) list;
	}
	public int updateReviewCnt(Integer rec_cnt , Integer no) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		Map<String,Integer> map = new HashMap<>();
		map.put("rec_cnt",rec_cnt);
		map.put("no", no);
		cnt = se.update("updateReviewCnt", map);
		se.commit();
		se.close();
		return cnt;
	}
}

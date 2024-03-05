package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.ImgVO;
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
	public ArrayList<ImgVO> getHotelImgData(int no){
		SqlSession se = sf.openSession();
		List<ImgVO> list = se.selectList("img_getHotelImgData",no);
		se.close();
		return (ArrayList<ImgVO>)list;
	}
	public ArrayList<ImgVO> getRoomImgData(int no){
		SqlSession se = sf.openSession();
		List<ImgVO> list = se.selectList("img_getRoomImgData",no);
		se.close();
		return (ArrayList<ImgVO>) list;
	}
	public int DeleteImg(ImgVO vo) {
		SqlSession se = sf.openSession();
		int cnt = 0;
		cnt = se.delete("Img_delete", vo);
		se.commit();
		se.close();
		return cnt;
	}
}

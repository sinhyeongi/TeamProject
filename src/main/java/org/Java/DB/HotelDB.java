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
	//전체 데이터 가져오기
	public ArrayList<HotelVO> getAll(){
		SqlSession se = sf.openSession();
		List<HotelVO> list = se.selectList("hotel_getAll");
		se.close();
		return (ArrayList<HotelVO>)list;
	}
	//아이디에 해당하는 호텔 전체 가져오기
	public ArrayList<HotelVO> Host_getAll(String id){
		SqlSession se = sf.openSession();
		List<HotelVO> list = se.selectList("hotel_host_getAll",id);
		se.close();
		return (ArrayList<HotelVO>) list;
	}
	//경도,위도 업데이트
	public int update_XY(HotelVO vo) {
		SqlSession se = sf.openSession();
		int cnt = se.update("hotel_update_XY", vo);
		se.commit();
		se.close();
		return cnt;
	}
	//호텔 이름 가져오기
	public String getHotelName(int no) {
		SqlSession se = sf.openSession();
		String name = se.selectOne("hotel_getName",no);
		se.close();
		return name;
	}
	//호텔하나 데이터가져오기
	public HotelVO getHotelData(int no) {
		SqlSession se = sf.openSession();
		HotelVO vo = se.selectOne("hotel_getData",no);
		se.close();
		return vo;
	}
	public int UpdateHotelData(HotelVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.update("UpdateHotelData",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public int InsertHotel(HotelVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.insert("Hotel_Insert",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public HotelVO Host_getHotel(String id) {
		SqlSession se = sf.openSession();
		HotelVO vo = se.selectOne("hotel_Host_getHotel", id);
		se.close();
		return vo;
	}
	public int acceptApplyHotel_star(String id) {
		SqlSession se = sf.openSession();
		int cnt = se.update("hotel_accept_update_star", id);
		se.commit();
		se.close();
		return cnt;
	}
	public int deleteHotel_hostId(String id) {
		SqlSession se = sf.openSession();
		int cnt = se.delete("hotel_deleteAll_hostId", id);
		se.commit();
		se.close();
		return cnt;
	}
}

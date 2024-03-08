package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.Java.VO.RoomVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class RoomDB {
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
	public String getRoomName(int no) {
		SqlSession se = sf.openSession();
		String name = se.selectOne("room_getName",no);
		se.close();
		return name;
	}
	public ArrayList<RoomVO> getRoomData(int hotel_no){
		SqlSession se = sf.openSession();
		List<RoomVO> list = se.selectList("room_getData",hotel_no);
		se.close();
		return (ArrayList<RoomVO>) list;
	}
	public RoomVO getOneRoomData(int no) {
		SqlSession se = sf.openSession();
		RoomVO list = se.selectOne("room_getOneRoomData",no);
		se.close();
		return list;
	}
	public int ReserveRoom(int room_no) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		se.update("reserveRoom",room_no);
		se.commit();
		se.close();
		return cnt;
	}
	public int ReserveCancelRoom(int room_no) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		se.update("reservecancelRoom",room_no);
		se.commit();
		se.close();
		return cnt;
	}
	public int UpdateRoomData(RoomVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.update("Room_UpdateRoomData",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public int InsertRoomData(RoomVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.insert("Room_InsertData",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public int Host_DeleteRoom(RoomVO vo) {
		int cnt = 0;
		SqlSession se = sf.openSession();
		cnt = se.delete("Room_Host_DeleteRoom",vo);
		se.commit();
		se.close();
		return cnt;
	}
}

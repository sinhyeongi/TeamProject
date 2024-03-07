package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.Java.VO.ReserveVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ReserveDB {
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
	public ArrayList<ReserveVO> getData(String id){
		SqlSession se = sf.openSession();
		List<ReserveVO> list = se.selectList("Reserve_getData",id);
		se.close();
		return (ArrayList<ReserveVO>)list;
	}
	public ArrayList<ReserveVO> getData_Phone(String phone,String name){
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("phone", phone);
		SqlSession se = sf.openSession();
		List<ReserveVO> list = se.selectList("Reserve_getData_Phone",map);
		se.close();
		return (ArrayList<ReserveVO>) list;
	}
	public int InsertData(ReserveVO vo) {
		SqlSession se = sf.openSession();
		int cnt = 0;
		cnt = se.insert("reserve_insertdata",vo);
		se.commit();
		se.close();
		return cnt;
	}
	public int ReserveCancel_uid(String uid) {
		SqlSession se = sf.openSession();
		int cnt = 0;
		cnt = se.delete("reserve_cancel_uid",uid);
		se.commit();
		se.close();
		return cnt;
	}
}

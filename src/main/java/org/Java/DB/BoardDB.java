package org.Java.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public ArrayList<BoarderVO> getSubcateList(Map<String,String> category){
		SqlSession session = sf.openSession();
		List<BoarderVO> list=null;
		if(category.get("subcategory").equals("TOP7")){
			list = session.selectList("boarder_getTop7List",category);
		}else {
			list = session.selectList("boarder_getSubcateList",category);
		}
		session.close();
		return (ArrayList<BoarderVO>)list;
	}
	public ArrayList<BoarderVO> getCategoryList(String category){
		SqlSession session = sf.openSession();
		List<BoarderVO> list = session.selectList("boarder_getCategoryList",category);
		session.close();
		return (ArrayList<BoarderVO>)list;
	}
	public BoarderVO getDataByNo (int no) {
		SqlSession session = sf.openSession();
		BoarderVO vo = session.selectOne("boarder_getDataByNo", no);
		session.close();
		return vo;
	}
	public int uploadBoard(BoarderVO vo) {
		SqlSession session = sf.openSession();
		int checkCount = session.update("boarderUpload", vo);
		session.commit();
		session.close();
		return checkCount;
	}
	
	
}

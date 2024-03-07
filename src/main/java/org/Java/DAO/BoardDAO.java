package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.BoardDB;
import org.Java.VO.BoarderVO;

public class BoardDAO {

	private static BoardDAO instance;
	private BoardDB db;
	private BoardDAO(){
		db = new BoardDB();
	}
	public static BoardDAO getInstance() {
		if(instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}
	
	public ArrayList<BoarderVO> getCateList(String category){
		return db.getCateList(category);
	}
}

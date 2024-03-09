package org.Java.DAO;

import java.util.ArrayList;
import java.util.Map;

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
	public BoarderVO getDataByNo(int no) {
		return db.getDataByNo(no);
	}
	public ArrayList<BoarderVO> getSubcateList(Map<String,String> category){
		return db.getSubcateList(category);
	}
	public int uploadBoard(BoarderVO vo) {
		return db.uploadBoard(vo);
	}
	public ArrayList<BoarderVO> getCategoryList(String category){
		return db.getCategoryList(category);
	}
}

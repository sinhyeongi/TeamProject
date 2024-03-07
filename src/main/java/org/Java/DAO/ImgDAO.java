package org.Java.DAO;

import java.util.ArrayList;

import org.Java.DB.ImgDB;
import org.Java.VO.ImgVO;

public class ImgDAO {
	private static ImgDAO instance;
	private ImgDB db;
	public ImgDAO() {
		db = new ImgDB();
	}
	public static ImgDAO getInstance() {
		if(instance == null) {
			instance = new ImgDAO();
		}
		return instance;
	}
	public ArrayList<String> getHotelUrl(int no) {
		return db.getHotelUrl(no);
	}
	public ArrayList<String> getRoomUrl(int no){
		return db.getRoomUrl(no);
	}
	public ArrayList<String> getReviewUrl(int no){
		return db.getReviewUrl(no);
	}
	public ArrayList<ImgVO> getHotelImgData(int no){
		return db.getHotelImgData(no);
	}
	public ArrayList<ImgVO> getRoomImgData(int no){
		return db.getRoomImgData(no);
	}
//	public ArrayList<ImgVO> getReviewImgData(int no){
//		return db.getReviewImgData(no);
//	}
	
	public int DeleteImg(ImgVO vo) {
		return db.DeleteImg(vo);
	}
	public int InsertImg(ImgVO vo) {
		return db.InsertImg(vo);
	}
}

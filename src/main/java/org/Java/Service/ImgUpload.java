package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ImgDAO;
import org.Java.VO.ImgVO;
import org.Java.VO.Page;

public class ImgUpload implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("no")!= null && request.getParameter("rq")!= null && request.getParameter("rq").equals("ho")) {
		ArrayList<ImgVO> list = ImgDAO.getInstance().getHotelImgData(Integer.parseInt(request.getParameter("no")));
		request.setAttribute("list", list);
		return "ImgUpload";
		}else if(request.getParameter("no")!= null && request.getParameter("rq")!= null && request.getParameter("rq").equals("ro")) {
			ArrayList<ImgVO> list = ImgDAO.getInstance().getRoomImgData(Integer.parseInt(request.getParameter("no")));
			request.setAttribute("list", list);
			return "ImgUpload";
		}
		return "re:Main";
	}
}

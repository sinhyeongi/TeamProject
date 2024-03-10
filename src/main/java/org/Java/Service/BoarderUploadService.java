package org.Java.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.BoardDAO;
import org.Java.VO.BoarderVO;
import org.Java.VO.Page;

public class BoarderUploadService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = (String)request.getSession().getAttribute("log");
		if(id ==null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		String type = request.getParameter("type");
		if(type.equals("board")) {
			String title= request.getParameter("title");
			String content= request.getParameter("content");
			String category= request.getParameter("category");
			String subcategory= request.getParameter("subcategory");
			BoarderVO vo = new BoarderVO();
			
			vo.setId(id);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setCategory(category+"_"+subcategory);
			int cnt = BoardDAO.getInstance().uploadBoard(vo);
			request.setAttribute("msg", "success");
			return "MsgPage";
		}else if(type.equals("review")) {
			request.setAttribute("msg", "success");
			return "MsgPage";
		}
		return null;
	}

}

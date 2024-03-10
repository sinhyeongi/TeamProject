package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.BoardDAO;
import org.Java.VO.BoarderVO;
import org.Java.VO.Page;

public class NoticeService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String,String> noticeMap = new HashMap<>();
		noticeMap.put("category", "notice");
		noticeMap.put("subcategory", "%");
		ArrayList<BoarderVO> list = BoardDAO.getInstance().getSubcateList(noticeMap);
		request.setAttribute("list", list);
		request.setAttribute("title", "공지사항");
		return "notice";
	}

}

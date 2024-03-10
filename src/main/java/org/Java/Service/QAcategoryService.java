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

public class QAcategoryService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String category = request.getParameter("category");
		Map<String,String> categoryMap = new HashMap<>();
		categoryMap.put("category", "qa");
		if(category ==null) {
			categoryMap.put("subcategory", "TOP7");
		}else {
			categoryMap.put("subcategory", category);
		}
		ArrayList<BoarderVO> list = BoardDAO.getInstance().getSubcateList(categoryMap);
		String data = "";
		if(list!=null) {
			for(BoarderVO vo : list) {
				String title = vo.getTitle();
				String[] contents = vo.getContent().split("\n");
				String cate = vo.getCategory();
				cate = cate.split("_")[1];
				System.out.println("cut qa_category ="+vo.getCategory().split("_")[0]);
				System.out.println("cut qa_category ="+vo.getCategory().split("_")[1]);
				data+= "<li>"						
					+ "<div class=\"qabtn\" role=\"button\" label=\" [%s] %s\">".formatted(cate,title)
					+ "<div class=\"qaflex\">"
					+ "<h3>"
					+ "<span class=\"qaheader\">Q</span>"
					+ "<p class=\"qatitle\">[%s] %s</p>".formatted(cate,title)
					+ "</h3>"
					+ "</div>"
					+ "<!-- QA제목 -->"
					+ "<div><i class=\"fas fa-duotone fa-angle-down\"></i></div>"
					+ "<!-- 화살표 -->"
					+ "</div>"
					+ "<div class=\"qacontent qacontent_container hidden\">"
					+ "<div class=\"qacontent qacontent_box\">";
				for(String content : contents) {
					data+= "<div>"
					+ "<font face=\"arial\" color=\"#252525\">"
					+ "<span style=\"font-size: 13px\">%s</span>".formatted(content)
					+ "</font>"
					+ "</div>";
				}
				data+= "</div>"
					+ "</div>";
			}
		}
		response.getWriter().write(data);
		
		return null;
		
	}
}

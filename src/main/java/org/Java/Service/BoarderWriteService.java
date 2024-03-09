package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.VO.Page;

public class BoarderWriteService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String log = (String)request.getSession().getAttribute("log");
		String title = request.getParameter("title");
		//비정상 접근
		if(log == null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		//공지사항은 어드민만 작성가능
		if(log.equals("admin")) {
			request.setAttribute("title", "게시글 작성");
			return "boarderWritePage";
		}else {
			request.setAttribute("titel", "리뷰 작성");
			return "reviewWritePage";
		}
	}
}

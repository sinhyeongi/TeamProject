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
		
		String type = request.getParameter("type");
		String title = request.getParameter("title");
		//비정상 접근
		if(type == null && !type.equals("notice") && !type.equals("qa")) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		String log = (String)request.getSession().getAttribute("log");
		//공지사항은 어드민만 작성가능
//		if(type.equals("notice") && !log.equals("admin")) {
//			request.setAttribute("msg", "error");
//			return "MsgPage";
//		}
		
		if(title == null) {
			request.setAttribute("type", type);
			return "boarderWritePage";
		}
		
		request.setAttribute("msg", "successUpload");
		return "MsgPage";
	}

}

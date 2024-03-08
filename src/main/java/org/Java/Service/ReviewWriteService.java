package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.VO.Page;

public class ReviewWriteService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//리뷰작성은 회원만 가능
		String log = (String)request.getSession().getAttribute("log");
		//예약번호
		if(request.getParameter("no")!=null) {
			int no = Integer.parseInt(request.getParameter("no"));
		}
		
		if(log==null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		
		return "ReviewWritePage";
	}

}

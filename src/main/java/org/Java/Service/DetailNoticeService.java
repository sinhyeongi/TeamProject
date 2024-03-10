package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.BoardDAO;
import org.Java.VO.BoarderVO;
import org.Java.VO.Page;

public class DetailNoticeService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("no") == null) {
			request.setAttribute("msg", "error");
			return "MsgPage";
		}
		int no = Integer.parseInt(request.getParameter("no"));
		BoarderVO vo = BoardDAO.getInstance().getDataByNo(no);
		request.setAttribute("vo", vo);
		
		return "detailNotice";
	}

}

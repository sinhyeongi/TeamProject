package org.Java.Service;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Page;

public class AttendanceCheckEventService implements Page{

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("log")==null) {
			request.setAttribute("msg", "pleaseLogin");
		}
		LocalDate now = LocalDate.now();
		
		String log = (String)request.getSession().getAttribute("log");
		MemberVO mVO = MemberDAO.getinstance().CheckLogin_API(log);
		Member_InfoVO mInfoVO = Member_InfoDAO.getInstance().getData(mVO.getId());
		if(now.toString().equals(mInfoVO.getLdate())) {
			request.setAttribute("msg", "earlyCheck");
		}else{
			Member_InfoDAO.getInstance().updateAttendanceCheck(mInfoVO.getId());
			request.setAttribute("point", mInfoVO.getPoint());
			request.setAttribute("msg", "successCheck");
		};
		return "MsgPage";
	}
	
}

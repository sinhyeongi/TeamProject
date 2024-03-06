package org.Java.Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Member_InfoVO;
import org.Java.VO.Member_couponVO;
import org.Java.VO.Page;

public class MemberInsertDataService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String nickname = request.getParameter("nickname");
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setEmail(email);
		vo.setName(name);
		vo.setBirth(birth);
		vo.setGender(gender);
		vo.setPhone(phone);
		vo.setAddress(address);
		vo.setNickname(nickname);
		
		System.out.println(vo);
		boolean check = MemberDAO.getinstance().insertMember(vo);
		if(check) {
			request.getSession().setAttribute("log", vo.getId());
			request.setAttribute("nickname", vo.getNickname());
			request.setAttribute("msg", "signUp");
			return "MsgPage";
		}else {
			return "re:Member_Insert";
		}
	}

}

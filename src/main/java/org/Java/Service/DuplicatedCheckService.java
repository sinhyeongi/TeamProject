package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.Page;

public class DuplicatedCheckService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String inputNickname = request.getParameter("nickname");
		String inputId = request.getParameter("id");
		String inputEmail = request.getParameter("email");
		String inputPhone = request.getParameter("phone");
		System.out.println("입력받은 닉네임 = "+ inputNickname);
		System.out.println("입력받은 아이디 = "+ inputId);
		System.out.println("입력받은 이메일 = "+ inputEmail);
		System.out.println("입력받은 연락처 = "+ inputPhone);
		//중복체크
		if(inputId != null) {
			int check = MemberDAO.getinstance().checkId(inputId);
			if(check > 0) {
				response.getWriter().write("Duplicated");
			}
		}else if(inputNickname != null) {
			int check = MemberDAO.getinstance().checkNickname(inputNickname);
			if(check > 0) {
				response.getWriter().write("Duplicated");
			}
		}else if(inputEmail != null){
			int check = MemberDAO.getinstance().checkEmail(inputEmail);
			if(check > 0) {
				response.getWriter().write("Duplicated");
			}
		}else if(inputPhone != null){
			int check = MemberDAO.getinstance().checkPhone(inputPhone);
			if(check > 0) {
				response.getWriter().write("Duplicated");
			}
		}
		return null;
	}

}

package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.VO.Page;

public class KakaoLoginService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		
		if(code != null) {
			//로그인 성공시
			return "re:Main.do";
		}else {
			//최초 진입시
			return "Login";
		}
	}

}

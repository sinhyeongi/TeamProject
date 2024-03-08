package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.VO.Page;

public class ApplyHostManager implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String decide = request.getParameter("decide");
		if(decide.equals("accept")) {
			//레벨 + 800
			//성급 * -1
			
		}else {
			//레벨 - 100;
			//호텔 DB삭제.
		}
		return null;
	}

}

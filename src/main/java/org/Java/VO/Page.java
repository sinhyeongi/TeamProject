package org.Java.VO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Page {
	public String Service(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException;
}

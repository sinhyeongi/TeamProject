package org.Java.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.Mapper.ViewMapper;
import org.Java.VO.Page;

import lombok.NoArgsConstructor;


@WebServlet("*.do")
@NoArgsConstructor
public class Controller extends HttpServlet {
	private ViewResolver v;
	private ViewMapper mapper = new ViewMapper();
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String req_url = request.getRequestURI();
		String url = request.getContextPath();
		req_url = req_url.substring(url.length());
		if(req_url.equals("/")) {
			response.sendRedirect("Main.do");
			return;
		}
		Page service = mapper.getService(req_url);
		if(service != null) {
			String req = service.Service(request, response);
			if(req == null || req.length() == 0) {return;}
			else if(req.indexOf("re:") != -1) {
				response.sendRedirect(req.substring(req.indexOf(":")+1)+".do");
				return;
			}else if(req.indexOf("Modal:") != -1) {
				request.setAttribute("page", req.substring(req.indexOf(":")+1)+".jsp");
				RequestDispatcher dis = request.getRequestDispatcher("WEB-INF/Modal/Modal_Layout.jsp");
				dis.forward(request, response);
				return;
			}
			request.setAttribute("page", req+".jsp");
			System.out.println("req =" + req);
			RequestDispatcher dis = request.getRequestDispatcher("WEB-INF/View/Layout.jsp");
			dis.forward(request, response);
			return;
		}
		request.setAttribute("page", "404.html");
		request.setAttribute("title","Not Found" );
		RequestDispatcher dis = request.getRequestDispatcher("WEB-INF/View/Layout.jsp");
		dis.forward(request, response);
	}
	
}

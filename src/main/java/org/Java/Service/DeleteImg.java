package org.Java.Service;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ImgDAO;
import org.Java.VO.ImgVO;
import org.Java.VO.Page;

public class DeleteImg implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("no") == null || request.getParameter("uploader") == null || request.getParameter("url") == null) {
			return null;
		}
		ImgVO vo = new ImgVO();
		vo.setUploader(request.getParameter("uploader"));
		vo.setNo(Integer.parseInt(request.getParameter("no")));
		vo.setUrl(request.getParameter("url"));
		int cnt = ImgDAO.getInstance().DeleteImg(vo);
		response.getWriter().print(cnt);
		if(cnt > 0) {
			String img_path = request.getServletContext().getRealPath("")+"img/"+vo.getUrl();
			String work_path = "";
			String os = System.getProperty("os.name").toLowerCase();
			if(os.contains("mac")) {
				work_path = "/Users/ssd/Desktop/TeamProject/TeamProject/src/main/webapp/img/";
			}else if(os.contains("win")) {
				work_path = System.getProperty("user.dir") +"\\src\\main\\webapp\\img\\";
			}
			work_path += vo.getUrl();
			System.out.println(img_path);
			File f = new File(img_path);
			File f2 = new File(work_path);
			if(f.exists()) {
				f.delete();
				System.out.println(f.getName()+"파일 삭제완료");
			}
			if(f2.exists()) {
				f2.delete();
				System.out.println("작업환경에서 삭제 완료");
				return null;
			}
			System.out.println("파일이 존재하지않습니다.");
		}
		return null;
	}
}

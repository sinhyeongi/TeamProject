package org.Java.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.HotelDAO;
import org.Java.DAO.ImgDAO;
import org.Java.DAO.RoomDAO;
import org.Java.VO.HotelVO;
import org.Java.VO.ImgVO;
import org.Java.VO.Page;
import org.Java.VO.RoomVO;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ImgUpload implements Page{
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("no")!= null && request.getParameter("rq")!= null && request.getParameter("rq").equals("ho")) {
			ArrayList<ImgVO> list = ImgDAO.getInstance().getHotelImgData(Integer.parseInt(request.getParameter("no")));
			HotelVO vo = HotelDAO.getInstance().getHotelData(Integer.parseInt(request.getParameter("no")));
			request.setAttribute("list", list);
			request.setAttribute("vo", vo);
			request.setAttribute("uploader", "ho");
			return "ImgUpload";
		}else if(request.getParameter("no")!= null && request.getParameter("rq")!= null && request.getParameter("rq").equals("ro")) {
			ArrayList<ImgVO> list = ImgDAO.getInstance().getRoomImgData(Integer.parseInt(request.getParameter("no")));
			RoomVO vo = RoomDAO.getInstance().getOneRoomData(Integer.parseInt(request.getParameter("no")));
			request.setAttribute("list", list);
			request.setAttribute("vo", vo);
			request.setAttribute("uploader", "ro");
			return "ImgUpload";
		}
		String root_path = request.getServletContext().getRealPath("");
		String work_path = "";
		String regx = "";
		String os = System.getProperty("os.name").toLowerCase();
		if(os.contains("mac")) {
			root_path += "img/upload";
			work_path = "/Users/ssd/Desktop/TeamProject/TeamProject/src/main/webapp/img/upload/";
			regx = "/upload";
		}else if(os.contains("win")) {
			root_path += "img\\upload";
			work_path = "C:\\TeamProject\\src\\main\\webapp\\img\\upload\\";
			regx = "\\upload";
		}
		File f = new File(root_path);
		File f2 = new File(work_path);
		if(!f.exists()) {
			try {
				f.mkdir();
				System.out.println("폴더 생성");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(!f2.exists()) {
			try {
				f2.mkdir();
				System.out.println("폴더 생성");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		int size = 1024 * 1024 *10;
		MultipartRequest mr = new MultipartRequest(request, root_path,size,"UTF-8",new DefaultFileRenamePolicy());
		String sfname = mr.getFilesystemName("file");
		File ofile = mr.getFile("file");
		File cfile = new File(work_path +sfname);
		Files.copy(ofile.toPath(), cfile.toPath());
		ImgVO vo = new ImgVO();
		vo.setUploader(mr.getParameter("uploader"));
		vo.setNo(Integer.parseInt(mr.getParameter("no")));
		vo.setUrl(ofile.toString().substring(ofile.toString().indexOf(regx) + 1));
		int cnt = ImgDAO.getInstance().InsertImg(vo);
		response.getWriter().print(cnt);
		return null;
	}
}

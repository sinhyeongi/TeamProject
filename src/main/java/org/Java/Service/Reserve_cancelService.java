package org.Java.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.ReserveDAO;
import org.Java.DAO.RoomDAO;
import org.Java.Util.ImportReserveCancel;
import org.Java.VO.Page;

public class Reserve_cancelService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if(request.getParameter("uid") == null) {
			return null;
		}
		System.out.println(request.getParameter("room_no"));
		ImportReserveCancel c = new ImportReserveCancel();
		String uid = request.getParameter("uid");
		int room_no = Integer.parseInt(request.getParameter("room_no"));
		int ch = c.ReserveCanle(uid);
		if(ch == 0) {
			ch = ReserveDAO.getInstance().ReserveCancel_uid(uid) - 1;
			RoomDAO.getInstance().ReserveCancelRoom(room_no);
		}
		//모두 정상적이라면 0 아니라면 -1 ~ 1
		response.getWriter().print(ch);


		return null;
	}
}

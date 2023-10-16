package com.admin.servlet;

import java.awt.print.PrinterGraphics;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.cameraDAOImpl;
import com.DB.DBConnect;
import com.entity.CameraDtls;

@WebServlet("/updateCamera")
public class UpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String cameraName = req.getParameter("cname");
			String cameraBrand = req.getParameter("cbrand");
			String cameraPrice = req.getParameter("cprice");
//			String cameraType = req.getParameter("ctype");
			String cameraStatus = req.getParameter("cstatus");
			
			CameraDtls c =new CameraDtls();
			c.setCameraId(id);
			c.setCameraName(cameraName);
			c.setCameraBrand(cameraBrand);
			c.setCameraPrice(cameraPrice);
			c.setStatus(cameraStatus);
			
			cameraDAOImpl dao=new cameraDAOImpl(DBConnect.getConn());
			boolean f=dao.updateUpdateCameras(c);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Cật Nhập Thành Công...");
				resp.sendRedirect("admin/all_cameras.jsp");
			}else {
				session.setAttribute("failedMsg", "Cật Nhập Thất Bại...");
				resp.sendRedirect("admin/all_cameras.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

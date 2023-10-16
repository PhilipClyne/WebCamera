package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.cameraDAOImpl;
import com.DB.DBConnect;
import com.entity.CameraDtls;

@WebServlet("/add_cameras")
@MultipartConfig
public class CamerasAdd extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String cameraName = req.getParameter("cname");
			String cameraBrand = req.getParameter("cbrand");
			String cameraPrice = req.getParameter("cprice");
			String cameraType = req.getParameter("ctype");
			String cameraStatus = req.getParameter("cstatus");
			Part part = req.getPart("cimg");
			String fileName = part.getSubmittedFileName();

			CameraDtls c = new CameraDtls(cameraName, cameraBrand, cameraPrice, cameraType, cameraStatus, fileName,
					"admin");

			cameraDAOImpl dao = new cameraDAOImpl(DBConnect.getConn());

			boolean f = dao.addCameras(c);

			HttpSession session = req.getSession();

			if (f) {
				
				String path = getServletContext().getRealPath("") + "camera";

				File file = new File(path);
				
				part.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg", "Đã thêm thành công");
				resp.sendRedirect("admin/add_cameras.jsp");
			} else {
				session.setAttribute("failedMsg", "Thêm thất bại");
				resp.sendRedirect("admin/add_cameras.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

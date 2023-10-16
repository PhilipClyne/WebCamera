package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cameraDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete_cameras")
public class CameraDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			cameraDAOImpl dao = new cameraDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteCameras(id);
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Xoá Thành Công...");
				resp.sendRedirect("admin/all_cameras.jsp");
			} else {
				session.setAttribute("failedMsg", "Xoá Thất Bại...");
				resp.sendRedirect("admin/all_cameras.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

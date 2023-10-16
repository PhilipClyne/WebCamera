package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phoneNumber = req.getParameter("phoneNumber");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			System.out.println(name + " " + email + " " + phoneNumber + " " + password + " " + check);

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhoneNumber(phoneNumber);
			us.setPassword(password);

			HttpSession session = req.getSession();

			if (check != null) {
				userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (f) {
//					System.out.println("User Register Succes...");

					session.setAttribute("succMsg", "Registration succesfully...");
					resp.sendRedirect("register.jsp");
				} else {
//					System.out.println("Failed to Succes...");
					session.setAttribute("failedMsg", "Failed to success...");
					resp.sendRedirect("register.jsp");
				}
			} else {
				System.out.println("Hãy đọc điều khoản và thoả thuận!");
				session.setAttribute("failedMsg", "Hãy đọc điều khoản và thoả thuận!");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

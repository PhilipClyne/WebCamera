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


@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			if("admin@gmail.com".equals(email) && "1111".equals(password)) {
				User us = new User();
				session.setAttribute("userobj", password);
				resp.sendRedirect("admin/home.jsp");
			}else {
				
				User us =dao.login(email, password);
				
				if(us!=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("failedMsg","Email hoặc mật khẩu không chính xác");
					resp.sendRedirect("login.jsp");
				}
				
				
				
				resp.sendRedirect("home.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

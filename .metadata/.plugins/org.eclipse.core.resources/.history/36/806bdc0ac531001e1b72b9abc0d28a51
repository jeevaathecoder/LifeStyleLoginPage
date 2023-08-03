package com.jeeva.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String umobile = request.getParameter("contact");
		String upwd = request.getParameter("pass");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lifestyle?useSSL=false","root","password");
			PreparedStatement pst = con.prepareStatement("insert into userdetails(name,uname,email,umobile,upwd) values(?,?,?,?,?)");
			
			pst.setString(1,name);
			pst.setString(2,uname);
			pst.setString(3,email);
			pst.setString(4, umobile);
			pst.setString(5, upwd);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("/registration.jsp");
			if(rowCount > 0) {
				
				request.setAttribute("Status", "success");	
			}
			else {
				request.setAttribute("Status", "failed");
			}
			
			dispatcher.forward(request, response);
			
		} catch( Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}

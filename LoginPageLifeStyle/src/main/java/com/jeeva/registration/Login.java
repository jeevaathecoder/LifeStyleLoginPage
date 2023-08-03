package com.jeeva.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String uname =request.getParameter("username");
		String upwd  =request.getParameter("pass");
		
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/lifestyle?useSSL=false","root","password");
			PreparedStatement pst = con.prepareStatement("select * from userdetails where uname=? and upwd=?");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			
			ResultSet rs= pst.executeQuery();
			
			 if (rs.next()) {
	               
  session.setAttribute("username", rs.getString("uname"));
	                dispatcher = request.getRequestDispatcher("Home.jsp");	
	             
	                
	            } else {
	                request.setAttribute("Status", "failed");
	                dispatcher = request.getRequestDispatcher("login.jsp");
	            }
			
			dispatcher.forward(request,response);
			
		} catch(Exception e) {
			e.printStackTrace();		
			}

	}

}
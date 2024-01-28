<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String loginU = String.valueOf(session.getAttribute("login"));
	String u_id = String.valueOf(session.getAttribute("u_id"));
	//out.println("User ID before setting in session: " + u_id);
   Boolean b1 = Boolean.valueOf(loginU);

   if (!b1) {
       out.println("<script> alert('ໄປລ໋ອກອິນກ່ອນ'); </script>");
       out.println("<script> window.location.href='login and register/login.html'; </script>");
   }
%>

<%

   String id = request.getParameter("b_id");
   

   try {
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project_jsp", "root", "");

       // Insert data into the 'order_order' table
       PreparedStatement pstmt2 = conn.prepareStatement("insert into order_book (b_id, user_id) values (?, ?)");
       pstmt2.setString(1, id);
       pstmt2.setString(2, u_id);
       pstmt2.executeUpdate();

       pstmt2.close();
       out.println("<script> alert('ຊື້ສຳເລັດແລ້ວ'); </script>");
       out.println("<script> location.href='index.jsp'; </script>");
   }  catch (Exception e) {
	    out.println(e); 
   }
%>
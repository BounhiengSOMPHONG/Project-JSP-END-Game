<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Connection conn = null;
try{
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project_jsp","root","");
}catch(Exception e){
    // out.println(e);   
} 
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .book {
        border: 2px solid #000;
        border-top:none ;
        border-left: none;
        border-right: none;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="assets/style.css">
<body>
    <div class="container">
        <div class="between">
            <div class="logo">
                <a href="../index.html" class="home-logo"><h1 class="logo">Logo</h1></a>
            </div>
            <div class="register">
                <a href="../login and register/register.html" >ສ້າງບັນຊີ</a>
                <a href="../login and register/login.html" >ເຂົ້າສູ່ລະບົບ</a>
            </div>
        </div>
        <div class="below-navbar">
            <ul>
                <li><a href="../book.html" class="book">ປຶ້ມ</a></li>
                <li><a href="../manga.html" class="manga">ປຶ້ມກາຕູນ</a></li>
                <li> <div class="dropdown">
                    <div class="selector">
                        <div class="hover">ຫມວດຫມູ່</div><i class="bi bi-chevron-down icon"></i>
                    </div>
                    <div class="lists">
                        <div class="list"><a href="../bundlebook.html" target="_blank" class="hover">bundlebook</a></div>
                        <div class="list"><a href="../bundlemanga.html" target="_blank" class="hover">bundlemanga</a></div>
                    </div>
                </div></li>
                <li><a href="#" class="about">ກ່ຽວກັບເຮົາ</a></li>
            </ul>
            <div class="con-search">
                <div class="search">
                    <input type="search" placeholder="Search" >
                    <div class="con-icon"><div class="active"><i class="bi bi-search"></i></div></div>
                </div>
            </div>
        </div>
        <hr>
        <br>
        <div class="con-content">
        <%    
        String id = request.getParameter("b_id"); 
        PreparedStatement pb = conn.prepareStatement("SELECT book.*, booktype.*, book_author.* FROM book "
        	    + "INNER JOIN booktype ON booktype.bt_id = book.bt_id "
        	    + "INNER JOIN book_author ON book_author.a_id = book.a_id "
        	    + "WHERE b_id = ?");
        pb.setString(1, id);
        ResultSet rsb = pb.executeQuery();
        
        %>
        <%if (rsb.next()) {%>
            <div class="poster "><img src="assets/pictures/pic_book/adventure/<%= rsb.getString("b_image") %>" alt="" class="pic-poster"></div>
            <div class="paragrap">
                <h5 class="b"><%= rsb.getString("b_title") %></h5>
                <br>
                <a href="orderbook.jsp?b_id=<%= rsb.getString("b_id")%>" class="btn"><%= rsb.getString("b_price") %>Kip</a>      
                <br>
                    <div class="type">
                    <p class="creater">ຂຽນໂດຍ <%= rsb.getString("a_name") %></p>
                        <h3>ປະເພດ: <%= rsb.getString("bt_name") %></h3>
                    </div>
            </div>
        </div>
        <div class="short-story">
            <p class="b">ເລື່ອງຫຍໍ້:</p>
            <br>
            <p class=""><%= rsb.getString("b_synopsis") %> </p>
        </div>
        <% } %>
        <br>
        <hr>
        <div class="footer">
            <div class="logo-footer">
                <h1>Logo</h1>
                <p>create/develop by :  </p>
                <h4>2CW3</h4>
                <p>follow for more new and content :</p><br>
            </div>
            <div class="about-footer">
                <h1>About us</h1>
                <p>about our group</p>
                <p>work@CW3group</p>
                <a href="#">contact us</a>
                <p>we are students at NUOL</p>
            </div>
        </div>
    </div>
    <script src="../dropdown.js">
    </script>
</body>
</html>
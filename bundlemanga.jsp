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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="./assets/style.css">
<body>
    <div class="container">
        <div class="between">
            <div class="logo">
                <a href="index.jsp" class="home-logo"><h1 class="logo"><img src="./assets/pictures/thirdeyes.jpeg" alt=""></h1></a>
            </div>
            <div class="register">
                <a href="./login and register/register.jsp" >ສ້າງບັນຊີ</a>
                <a href="./login and register/login.html" >ເຂົ້າສູ່ລະບົບ</a>
            </div>
        </div>
        <div class="below-navbar">
            <ul>
                <li><a href="book.jsp" class="book hover">ປຶ້ມ</a></li>
                <li><a href="manga.jsp" class="manga hover">ປຶ້ມກາຕູນ</a></li>
                <li> <div class="dropdown">
                    <div class="selector">
                        <div class="hover">ຫມວດຫມູ່</div><i class="bi bi-chevron-down icon"></i>
                    </div>
                    <div class="lists">
                        <div class="list"><a href="bundlebook.jsp" target="_blank" class="hover">bundlebook</a></div>
                        <div class="list"><a href="bundlemanga.jsp" target="_blank" class="hover">bundlemanga</a></div>
                    </div>
                </div></li>
                <li><a href="#" class="about hover">ກ່ຽວກັບເຮົາ</a></li>
            </ul>
            <div class="con-search">
                <div class="search">
                    <input type="search" placeholder="Search" >
                    <div class="con-icon"><div class="active"><i class="bi bi-search"></i></div></div>
                </div>
            </div>
        </div>
        <div class="con-typenav">
            <div class="typenav">
                <ul>
                    <li><a href="#" class="school">school life</a></li>
                    <li><a href="./type of manga/system.jsp" class="system">system</a></li>
                    <li><a href="./type of manga/revags.jsp" class="revangs">revangs</a></li>
                    <li><a href="./type of manga/isekai.jsp" class="isekai">isekai</a></li>
                    <li><a href="./type of manga/magic.jsp" class="magic">magic</a></li>
                    <li><a href="./type of manga/harem.jsp" class="harem">harem</a></li>
                    <li><a href="./type of manga/dark.jsp" class="dark">dark fantasy</a></li>
                    <li><a href="./type of manga/action.jsp" class="action">action</a></li>
                </ul>
            </div>
        </div>
        <br>
        <p class="margin">school life</p>
        <br>
        <div class="con-cont">
            <div class="main-cont">
            <%
            //แสดงค่า
            PreparedStatement pm = conn.prepareStatement("SELECT * FROM manga where mt_id=10");
            ResultSet rsm = pm.executeQuery();
            %>
                 <%
                    while (rsm.next()) {
                 %>
                 <div class="mybook"><a href="sellbook.jsp?b_id=<%= rsm.getString("b_id") %>" class=""><img src="assets/pictures/pic_manga/<%= rsm.getString("m_image") %>" alt="" class="coverbook"></a></div>
                <%
                }
                %>
            </div>
        </div>
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
    <script src="./dropdown.js">
    </script>
</body>
</html>
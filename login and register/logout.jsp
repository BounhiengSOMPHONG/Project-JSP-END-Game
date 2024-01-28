<%
session.removeAttribute("u_id");
session.removeAttribute("login");
out.println("<script>location.href='../index.jsp'; </script>");
%>
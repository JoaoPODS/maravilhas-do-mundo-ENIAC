<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%> 


<%@ page import="java.sql.*" %>

<%

String usuario =
(String)session.getAttribute("usuario");

String patrimonio =
request.getParameter("patrimonio");

Connection con =
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/patrimonio",
"root",
""
);

String sql =
"DELETE FROM favoritos WHERE usuario=? AND pagina=?";

PreparedStatement stm =
con.prepareStatement(sql);

stm.setString(1,usuario);
stm.setString(2,patrimonio);

stm.execute();

response.sendRedirect("favoritos.jsp");

%>


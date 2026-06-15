<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%> 

<%@ page import="java.sql.*" %>

<%

String usuario =
(String)session.getAttribute("usuario");

if(usuario == null){

    response.sendRedirect("entrar.html");
    return;

}

String patrimonio =
request.getParameter("patrimonio");

Connection con =
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/patrimonio",
"root",
""
);

try{

    String sql =
    "INSERT INTO favoritos VALUES(?,?)";

    PreparedStatement stm =
    con.prepareStatement(sql);

    stm.setString(1,usuario);
    stm.setString(2,patrimonio);

    stm.execute();

}
catch(Exception e){

    // já favoritado

}

response.sendRedirect(request.getHeader("referer"));

%>

